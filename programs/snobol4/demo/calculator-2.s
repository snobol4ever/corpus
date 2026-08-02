                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__EMIT_α
proc_LBL__EMIT_α:
proc_LBL__EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__EMIT_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
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
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_subscript_α
.Lx21_0:
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
                                                                                        jne   .Lx22_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n8_lit_integer_α
.Lx22_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx23_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n8_lit_integer_α
.Lx23_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_call_α
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
                        mov              rdi, qword ptr [rip + .Lx25_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx25_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_6]
                        lea              rdx, [rip + .Lx25_7]
                                                                                        jmp   rax
.Lx25_6:
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
                                                                                        jmp   .Lx25_2
.Lx25_7:
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
                                                                                        jmp   .Lx25_2
.Lx25_5:
                        add              rsp, 32
.Lx25_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n8_lit_integer_α
.Lx25_240:
                                                                                        jmp   n6_assign_α
n5_call_β:
                                                                                        jmp   n8_lit_integer_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx26_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n7_statement_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_α:
                        add              rsp, 80
                                                                                        jmp   n8_lit_integer_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_assign_α
.Lx29_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n10_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_α:
                        add              rsp, 16
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_call_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd35:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd35]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx34_240
                        add              rsp, 16
                                                                                        jmp   n15_lit_string_α
.Lx34_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_assign_α
n12_call_β:
                        add              rsp, 16
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n14_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_α:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_call_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd41:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd41]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n18_save_restore_α
.Lx40_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_save_restore_α
n16_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n18_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n17_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n18_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__PSH_α
proc_LBL__PSH_α:
proc_LBL__PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n47_var_α
n46_goto_β:
                                                                                        jmp   proc_LBL__PSH_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_binop_α
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx64_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n52_var_α
.Lx64_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n51_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_α:
                        add              rsp, 48
                                                                                        jmp   n52_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx70_240
                        add              rsp, 16
                                                                                        jmp   n57_lit_string_α
.Lx70_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n56_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_α:
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_call_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd76:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd76]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx75_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n60_save_restore_α
.Lx75_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_save_restore_α
n58_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n60_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n59_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n60_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DRF_α
proc_LBL__DRF_α:
proc_LBL__DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n81_goto_α:
                                                                                        jmp   n82_var_α
n81_goto_β:
                                                                                        jmp   proc_LBL__DRF_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_match_begin_α
n82_var_β:
                        add              rsp, 16
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_match_begin_α:
                        sub              rsp, 448
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
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              rdi, qword ptr [rsp + 448]                     # var
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 360], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 368], r13                     # outer_Σ
                        mov              qword ptr [rbp + 376], r14                     # outer_δ
                        mov              qword ptr [rbp + 384], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 392], rax                     # cap_gen
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
.Lx105_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n84_match_sequence_α
n83_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx105_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx105_1
                                                                                        jmp   .Lx105_0
.Lx105_1:
                        mov              r10, qword ptr [1879048192]
.Lx105_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx105_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 368]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 376]                     # outer_δ
                        mov              r15, qword ptr [rbp + 384]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 392]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 264]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_match_sequence_α:
                                                                                        jmp   n96_lit_integer_α
n84_match_sequence_as:
                                                                                        jmp   n85_match_end_α
n84_match_sequence_β:
                                                                                        jmp   n94_match_rpos_β
n84_match_sequence_af:
                                                                                        jmp   n83_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n85_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx109_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx109_9
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
.Lx109_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx109_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx109_1:
                        test             rax, rax
                                                                                        je    .Lx109_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx109_3]
                        lea              rdx, [rip + .Lx109_4]
                                                                                        jmp   rax
.Lx109_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx109_1
.Lx109_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx109_1
.Lx109_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx109_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx109_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 368]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 376]                     # outer_δ
                        mov              r15, qword ptr [rbp + 384]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 392]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n86_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_α:
                        mov              rbp, qword ptr [rbp + 360]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n87_var_α
n86_statement_β:
                        mov              rbp, qword ptr [rbp + 360]
                        add              rsp, 464
                                                                                        jmp   n98_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_var_α
n87_var_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_subscript_α
n88_var_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx114_240
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
.Lx114_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_deref_α
n89_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx115_240
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
.Lx115_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_assign_α
n90_deref_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n92_statement_α
n91_assign_β:
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_α:
                                                                                        jmp   n101_save_restore_α
n92_statement_β:
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n94_match_rpos_α
n93_lit_integer_β:
                                                                                        jmp   n95_match_any_β
.Lx119_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n95_match_any_β
                                                                                        jmp   n85_match_end_α
n94_match_rpos_β:
                                                                                        jmp   n95_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n83_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n83_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n93_lit_integer_α
n95_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n83_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n97_match_pos_α
n96_lit_integer_β:
                                                                                        jmp   n83_match_begin_β
.Lx123_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n83_match_begin_β
                                                                                        jmp   n95_match_any_α
n97_match_pos_β:
                                                                                        jmp   n83_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n99_assign_α
n98_var_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n100_statement_α
n99_assign_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_α:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
n100_statement_β:
                        add              rsp, 16
                                                                                        jmp   n101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n101_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ADD_α
proc_LBL__ADD_α:
proc_LBL__ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n131_goto_α:
                                                                                        jmp   n132_var_α
n131_goto_β:
                                                                                        jmp   proc_LBL__ADD_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n134_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx167_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n139_var_α
.Lx167_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n135_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n139_var_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_call_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx170_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx170_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_6]
                        lea              rdx, [rip + .Lx170_7]
                                                                                        jmp   rax
.Lx170_6:
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
                                                                                        jmp   .Lx170_2
.Lx170_7:
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
                                                                                        jmp   .Lx170_2
.Lx170_5:
                        add              rsp, 32
.Lx170_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx170_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n139_var_α
.Lx170_240:
                                                                                        jmp   n137_assign_α
n136_call_β:
                                                                                        jmp   n139_var_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n138_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_α:
                        add              rsp, 80
                                                                                        jmp   n139_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n141_binop_α
.Lx175_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx176_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n144_var_α
.Lx176_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n143_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_α:
                        add              rsp, 48
                                                                                        jmp   n144_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n146_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n146_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx182_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n156_lit_string_α
.Lx182_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n147_var_α
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
#-----------------------------------------------------------------------------------------------------------------------
n149_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx185_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n156_lit_string_α
.Lx185_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx186_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n156_lit_string_α
.Lx186_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_call_α
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
                        mov              rdi, qword ptr [rip + .Lx188_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx188_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx188_6]
                        lea              rdx, [rip + .Lx188_7]
                                                                                        jmp   rax
.Lx188_6:
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
                                                                                        jmp   .Lx188_2
.Lx188_7:
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
                                                                                        jmp   .Lx188_2
.Lx188_5:
                        add              rsp, 32
.Lx188_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx188_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n156_lit_string_α
.Lx188_240:
                                                                                        jmp   n152_var_α
n151_call_β:
                                                                                        jmp   n156_lit_string_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n153_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx190_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n156_lit_string_α
.Lx190_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n154_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx191_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n156_lit_string_α
.Lx191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n155_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_α:
                        add              rsp, 176
                                                                                        jmp   n156_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n157_call_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd196:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd196]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx195_240
                        add              rsp, 16
                                                                                        jmp   n160_lit_string_α
.Lx195_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n158_assign_α
n157_call_β:
                        add              rsp, 16
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n159_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_α:
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_call_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd202:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd202]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx201_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n163_save_restore_α
.Lx201_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n162_save_restore_α
n161_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n163_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n162_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n163_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__SUB_α
proc_LBL__SUB_α:
proc_LBL__SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n207_goto_α:
                                                                                        jmp   n208_var_α
n207_goto_β:
                                                                                        jmp   proc_LBL__SUB_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n209_var_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n210_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n210_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx243_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n215_var_α
.Lx243_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n211_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx244_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n215_var_α
.Lx244_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n212_call_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx246_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx246_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx246_6]
                        lea              rdx, [rip + .Lx246_7]
                                                                                        jmp   rax
.Lx246_6:
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
                                                                                        jmp   .Lx246_2
.Lx246_7:
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
                                                                                        jmp   .Lx246_2
.Lx246_5:
                        add              rsp, 32
.Lx246_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n215_var_α
.Lx246_240:
                                                                                        jmp   n213_assign_α
n212_call_β:
                                                                                        jmp   n215_var_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n214_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_α:
                        add              rsp, 80
                                                                                        jmp   n215_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n216_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n217_binop_α
.Lx251_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx252_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n220_var_α
.Lx252_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n218_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n219_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_α:
                        add              rsp, 48
                                                                                        jmp   n220_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n222_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx258_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n232_lit_string_α
.Lx258_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n225_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n225_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx261_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n232_lit_string_α
.Lx261_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n226_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx262_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n232_lit_string_α
.Lx262_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n227_call_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx264_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx264_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx264_6]
                        lea              rdx, [rip + .Lx264_7]
                                                                                        jmp   rax
.Lx264_6:
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
                                                                                        jmp   .Lx264_2
.Lx264_7:
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
                                                                                        jmp   .Lx264_2
.Lx264_5:
                        add              rsp, 32
.Lx264_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx264_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n232_lit_string_α
.Lx264_240:
                                                                                        jmp   n228_var_α
n227_call_β:
                                                                                        jmp   n232_lit_string_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n229_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx266_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n232_lit_string_α
.Lx266_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n230_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx267_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n232_lit_string_α
.Lx267_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n231_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_α:
                        add              rsp, 176
                                                                                        jmp   n232_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n233_call_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd272:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd272]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx271_240
                        add              rsp, 16
                                                                                        jmp   n236_lit_string_α
.Lx271_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n234_assign_α
n233_call_β:
                        add              rsp, 16
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n235_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_α:
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n237_call_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd278:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd278]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx277_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n239_save_restore_α
.Lx277_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n238_save_restore_α
n237_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n239_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n238_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n239_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__MUL_α
proc_LBL__MUL_α:
proc_LBL__MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n283_goto_α:
                                                                                        jmp   n284_var_α
n283_goto_β:
                                                                                        jmp   proc_LBL__MUL_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n285_var_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n286_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n286_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx319_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n291_var_α
.Lx319_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n287_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx320_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n291_var_α
.Lx320_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n288_call_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx322_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx322_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx322_6]
                        lea              rdx, [rip + .Lx322_7]
                                                                                        jmp   rax
.Lx322_6:
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
                                                                                        jmp   .Lx322_2
.Lx322_7:
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
                                                                                        jmp   .Lx322_2
.Lx322_5:
                        add              rsp, 32
.Lx322_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx322_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n291_var_α
.Lx322_240:
                                                                                        jmp   n289_assign_α
n288_call_β:
                                                                                        jmp   n291_var_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n290_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_α:
                        add              rsp, 80
                                                                                        jmp   n291_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n292_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n293_binop_α
.Lx327_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx328_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n296_var_α
.Lx328_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n295_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_α:
                        add              rsp, 48
                                                                                        jmp   n296_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n297_var_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n298_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n298_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx334_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n308_lit_string_α
.Lx334_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n300_var_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n301_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n301_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx337_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n308_lit_string_α
.Lx337_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n302_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n302_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx338_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n308_lit_string_α
.Lx338_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n303_call_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx340_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx340_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx340_6]
                        lea              rdx, [rip + .Lx340_7]
                                                                                        jmp   rax
.Lx340_6:
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
                                                                                        jmp   .Lx340_2
.Lx340_7:
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
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        add              rsp, 32
.Lx340_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx340_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n308_lit_string_α
.Lx340_240:
                                                                                        jmp   n304_var_α
n303_call_β:
                                                                                        jmp   n308_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n305_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n305_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n308_lit_string_α
.Lx342_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n306_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx343_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n308_lit_string_α
.Lx343_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n307_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_α:
                        add              rsp, 176
                                                                                        jmp   n308_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n309_call_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd348:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd348]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx347_240
                        add              rsp, 16
                                                                                        jmp   n312_lit_string_α
.Lx347_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n310_assign_α
n309_call_β:
                        add              rsp, 16
                                                                                        jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n311_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_α:
                                                                                        jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n313_call_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd354:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd354]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx353_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n315_save_restore_α
.Lx353_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n314_save_restore_α
n313_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n315_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n314_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n315_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DIV_α
proc_LBL__DIV_α:
proc_LBL__DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n359_goto_α:
                                                                                        jmp   n360_var_α
n359_goto_β:
                                                                                        jmp   proc_LBL__DIV_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n361_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n362_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n362_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx395_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n367_var_α
.Lx395_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n363_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx396_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n367_var_α
.Lx396_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n364_call_α
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx398_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx398_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx398_6]
                        lea              rdx, [rip + .Lx398_7]
                                                                                        jmp   rax
.Lx398_6:
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
                                                                                        jmp   .Lx398_2
.Lx398_7:
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
                                                                                        jmp   .Lx398_2
.Lx398_5:
                        add              rsp, 32
.Lx398_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx398_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n367_var_α
.Lx398_240:
                                                                                        jmp   n365_assign_α
n364_call_β:
                                                                                        jmp   n367_var_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n365_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n366_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_α:
                        add              rsp, 80
                                                                                        jmp   n367_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n369_binop_α
.Lx403_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx404_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n372_var_α
.Lx404_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n370_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n371_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_α:
                        add              rsp, 48
                                                                                        jmp   n372_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n373_var_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n374_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n374_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx410_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n384_lit_string_α
.Lx410_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n377_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n377_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx413_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n384_lit_string_α
.Lx413_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n378_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n378_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx414_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n384_lit_string_α
.Lx414_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n379_call_α
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx416_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx416_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx416_6]
                        lea              rdx, [rip + .Lx416_7]
                                                                                        jmp   rax
.Lx416_6:
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
                                                                                        jmp   .Lx416_2
.Lx416_7:
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
                                                                                        jmp   .Lx416_2
.Lx416_5:
                        add              rsp, 32
.Lx416_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx416_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n384_lit_string_α
.Lx416_240:
                                                                                        jmp   n380_var_α
n379_call_β:
                                                                                        jmp   n384_lit_string_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n381_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n381_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx418_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n384_lit_string_α
.Lx418_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n382_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx419_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n384_lit_string_α
.Lx419_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n383_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_α:
                        add              rsp, 176
                                                                                        jmp   n384_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n385_call_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd424:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd424]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx423_240
                        add              rsp, 16
                                                                                        jmp   n388_lit_string_α
.Lx423_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n386_assign_α
n385_call_β:
                        add              rsp, 16
                                                                                        jmp   n388_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n387_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_α:
                                                                                        jmp   n388_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n389_call_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd430:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd430]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx429_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n391_save_restore_α
.Lx429_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n390_save_restore_α
n389_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n391_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n390_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n391_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__SGN_α
proc_LBL__SGN_α:
proc_LBL__SGN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n435_goto_α:
                                                                                        jmp   n436_var_α
n435_goto_β:
                                                                                        jmp   proc_LBL__SGN_ω
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n437_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n438_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n438_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx476_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n443_var_α
.Lx476_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n439_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx477_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n443_var_α
.Lx477_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n440_call_α
#-----------------------------------------------------------------------------------------------------------------------
n440_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx479_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx479_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx479_6]
                        lea              rdx, [rip + .Lx479_7]
                                                                                        jmp   rax
.Lx479_6:
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
                                                                                        jmp   .Lx479_2
.Lx479_7:
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
                                                                                        jmp   .Lx479_2
.Lx479_5:
                        add              rsp, 32
.Lx479_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx479_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n443_var_α
.Lx479_240:
                                                                                        jmp   n441_assign_α
n440_call_β:
                                                                                        jmp   n443_var_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n442_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_α:
                        add              rsp, 80
                                                                                        jmp   n443_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n444_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n445_binop_α
.Lx484_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n445_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx485_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n448_var_α
.Lx485_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n446_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n446_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n447_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_α:
                        add              rsp, 48
                                                                                        jmp   n448_var_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n450_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n450_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx491_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n459_var_α
.Lx491_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n451_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n451_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx492_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n459_var_α
.Lx492_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n452_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n453_call_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n453_call_α:
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
.Lrkfnzd495:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd495]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx494_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n459_var_α
.Lx494_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n454_statement_α
n453_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n459_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_α:
                        add              rsp, 96
                                                                                        jmp   n455_var_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n455_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n456_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n456_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n457_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n458_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_α:
                        add              rsp, 32
                                                                                        jmp   n459_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n461_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n461_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx505_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n465_lit_string_α
.Lx505_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n463_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n463_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx507_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n465_lit_string_α
.Lx507_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n464_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n464_statement_α:
                        add              rsp, 80
                                                                                        jmp   n465_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n466_call_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n466_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd512:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd512]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx511_240
                        add              rsp, 16
                                                                                        jmp   n469_lit_string_α
.Lx511_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n467_assign_α
n466_call_β:
                        add              rsp, 16
                                                                                        jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n467_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # SGN
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n468_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_α:
                                                                                        jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n470_call_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n470_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd518:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd518]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx517_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n472_save_restore_α
.Lx517_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n471_save_restore_α
n470_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n472_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n471_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n472_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n523_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n524_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n524_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx528_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx528_1
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "EMIT"
.Lx528_1:
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
n529_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n530_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n530_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx534_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx534_1
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "PSH"
.Lx534_1:
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
n535_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n536_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n536_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx540_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx540_1
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "DRF"
.Lx540_1:
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
                        .string          "ADD"
.Lx546_1:
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
                        .string          "SUB"
.Lx552_1:
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
                        .string          "MUL"
.Lx558_1:
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
                        .string          "DIV"
.Lx564_1:
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
                        .string          "SGN"
.Lx570_1:
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
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n573_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n571_match_assign_save_α:
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n572_match_any_α
n571_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n572_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx577_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx577_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx577_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx577_240:
                        add              r14d, 1
                                                                                        jmp   n573_match_assign_cond_α
n572_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n573_match_assign_cond_α:
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
                        add              rsp, 64
                                                                                        jmp   proc_PAT$0_scanhit
n573_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n572_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx580_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx580_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx581_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx581_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx581_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx581_0:
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
                        lea              rax, [rip + n584_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n582_match_assign_save_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n583_match_span_α
n582_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n583_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx588_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx588_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx588_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx588_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx588_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx588_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx588_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx588_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx588_1
                        add              ecx, 1
                                                                                        jmp   .Lx588_0
.Lx588_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx588_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx588_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n584_match_assign_cond_α
n583_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n584_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                        add              rsp, 48
                                                                                        jmp   proc_PAT$1_scanhit
n584_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n583_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx591_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx591_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx592_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx592_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx592_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx592_0:
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
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n593_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx601_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n599_match_patref_α
.Lx601_21:
                        lea              rax, [rip + .Lx601_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n598_match_patref_α
.Lx601_22:
                        lea              rax, [rip + .Lx601_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n594_match_sequence_α
n593_match_alternate_s0:
                        lea              rax, [rip + .Lx601_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n593_match_alternate_as
n593_match_alternate_s1:
                        lea              rax, [rip + .Lx601_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n593_match_alternate_as
n593_match_alternate_s2:
                        lea              rax, [rip + .Lx601_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n593_match_alternate_as
.Lx601_40:
                                                                                        jmp   n599_match_patref_β
.Lx601_41:
                                                                                        jmp   n598_match_patref_β
.Lx601_42:
                                                                                        jmp   n594_match_sequence_β
n593_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n593_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n593_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx601_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n597_match_lit_α
n594_match_sequence_as:
                                                                                        jmp   n593_match_alternate_s2
n594_match_sequence_β:
                                                                                        jmp   n595_match_lit_β
n594_match_sequence_af:
                                                                                        jmp   n593_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n595_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n596_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n596_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n593_match_alternate_s2
n595_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n596_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n596_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx606_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx606_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx606_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx606_10
.Lx606_9:
                        xor              eax, eax
.Lx606_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx606_11:
                        test             rax, rax
                                                                                        jz    .Lx606_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx606_4]
                        lea              rdx, [rip + .Lx606_5]
                                                                                        jmp   rax
.Lx606_4:
                                                                                        jmp   n595_match_lit_α
.Lx606_5:
                                                                                        jmp   n597_match_lit_β
.Lx606_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx606_2:
                        test             rax, rax
                                                                                        je    .Lx606_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx606_7]
                        lea              rdx, [rip + .Lx606_8]
                                                                                        jmp   rax
.Lx606_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx606_2
.Lx606_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx606_2
.Lx606_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n597_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx606_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n595_match_lit_α
.Lx606_6:
                        add              rsp, 16
                                                                                        jmp   n597_match_lit_β
n596_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n597_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n593_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n593_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n596_match_defer_α
n597_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n593_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n598_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx609_11
                        mov              rax, qword ptr [1879052560]                    # I
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx609_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx609_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx609_10
.Lx609_9:
                        xor              eax, eax
.Lx609_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx609_11:
                        test             rax, rax
                                                                                        jz    .Lx609_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx609_4]
                        lea              rdx, [rip + .Lx609_5]
                                                                                        jmp   rax
.Lx609_4:
                                                                                        jmp   n593_match_alternate_s1
.Lx609_5:
                                                                                        jmp   n593_match_alternate_af
.Lx609_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx609_2:
                        test             rax, rax
                                                                                        je    .Lx609_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx609_7]
                        lea              rdx, [rip + .Lx609_8]
                                                                                        jmp   rax
.Lx609_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx609_2
.Lx609_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx609_2
.Lx609_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n593_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx609_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n593_match_alternate_s1
.Lx609_6:
                        add              rsp, 16
                                                                                        jmp   n593_match_alternate_af
n598_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n599_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx610_11
                        mov              rax, qword ptr [1879052544]                    # V
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 8
                                                                                        jne   .Lx610_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx610_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx610_10
.Lx610_9:
                        xor              eax, eax
.Lx610_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx610_11:
                        test             rax, rax
                                                                                        jz    .Lx610_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx610_4]
                        lea              rdx, [rip + .Lx610_5]
                                                                                        jmp   rax
.Lx610_4:
                                                                                        jmp   n593_match_alternate_s0
.Lx610_5:
                                                                                        jmp   n593_match_alternate_af
.Lx610_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx610_2:
                        test             rax, rax
                                                                                        je    .Lx610_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx610_7]
                        lea              rdx, [rip + .Lx610_8]
                                                                                        jmp   rax
.Lx610_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx610_2
.Lx610_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx610_2
.Lx610_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n593_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx610_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n593_match_alternate_s0
.Lx610_6:
                        add              rsp, 16
                                                                                        jmp   n593_match_alternate_af
n599_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx611_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx611_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx612_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx612_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx612_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx612_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n613_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx623_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n621_match_patref_α
.Lx623_21:
                        lea              rax, [rip + .Lx623_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n614_match_sequence_α
n613_match_alternate_s0:
                        lea              rax, [rip + .Lx623_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n613_match_alternate_as
n613_match_alternate_s1:
                        lea              rax, [rip + .Lx623_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n613_match_alternate_as
.Lx623_40:
                                                                                        jmp   n621_match_patref_β
.Lx623_41:
                                                                                        jmp   n614_match_sequence_β
n613_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n613_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n613_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx623_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n614_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n618_match_assign_save_α
n614_match_sequence_as:
                                                                                        jmp   n613_match_alternate_s1
n614_match_sequence_β:
                                                                                        jmp   n617_match_assign_cond_β
n614_match_sequence_af:
                                                                                        jmp   n613_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n615_match_assign_save_α:
                        lea              rdi, [rbp + 176]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n616_match_defer_α
n615_match_assign_save_β:
                        lea              rdi, [rbp + 176]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n620_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n616_match_defer_α:
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx628_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx628_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx628_10
.Lx628_9:
                        xor              eax, eax
.Lx628_10:
                        test             rax, rax
                                                                                        jz    .Lx628_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx628_4]
                        lea              rdx, [rip + .Lx628_5]
                                                                                        jmp   rax
.Lx628_4:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n617_match_assign_cond_α
.Lx628_5:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n615_match_assign_save_β
.Lx628_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx628_2:
                        test             rax, rax
                                                                                        je    .Lx628_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx628_7]
                        lea              rdx, [rip + .Lx628_8]
                                                                                        jmp   rax
.Lx628_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx628_2
.Lx628_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx628_2
.Lx628_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n615_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx628_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n617_match_assign_cond_α
.Lx628_6:
                        add              rsp, 16
                                                                                        jmp   n615_match_assign_save_β
n616_match_defer_β:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n615_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n617_match_assign_cond_α:
                        lea              rdi, [rbp + 176]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n613_match_alternate_s1
n617_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n616_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n618_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n619_match_any_α
n618_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n613_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n619_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx634_240
                        add              rsp, 16
                                                                                        jmp   n613_match_alternate_af
.Lx634_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx634_0
                        cmp              esi, 45
                                                                                        je    .Lx634_0
                        add              rsp, 16
                                                                                        jmp   n613_match_alternate_af
.Lx634_0:
                        add              r14d, 1
                                                                                        jmp   n620_match_assign_cond_α
n619_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n613_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n620_match_assign_cond_α:
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
                                                                                        jmp   n615_match_assign_save_α
n620_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n619_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n621_match_patref_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052576]                    # A
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx637_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx637_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx637_10
.Lx637_9:
                        xor              eax, eax
.Lx637_10:
                        test             rax, rax
                                                                                        jz    .Lx637_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx637_4]
                        lea              rdx, [rip + .Lx637_5]
                                                                                        jmp   rax
.Lx637_4:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n613_match_alternate_s0
.Lx637_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n613_match_alternate_af
.Lx637_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx637_2:
                        test             rax, rax
                                                                                        je    .Lx637_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx637_7]
                        lea              rdx, [rip + .Lx637_8]
                                                                                        jmp   rax
.Lx637_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx637_2
.Lx637_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx637_2
.Lx637_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n613_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx637_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n613_match_alternate_s0
.Lx637_6:
                        add              rsp, 16
                                                                                        jmp   n613_match_alternate_af
n621_match_patref_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n613_match_alternate_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx638_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx638_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx639_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx639_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx639_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx639_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rcx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 368], r8
                        mov              dword ptr [rsp + 360], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n640_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n640_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n653_match_patref_α
n640_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n640_match_sequence_β:
                                                                                        jmp   n641_match_arbno_β
n640_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n641_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   proc_PAT$4_γ
n641_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n642_match_alternate_α
n641_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n642_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   proc_PAT$4_γ
n641_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx657_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n642_match_alternate_β
.Lx657_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n653_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n642_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx659_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n648_match_sequence_α
.Lx659_21:
                        lea              rax, [rip + .Lx659_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n643_match_sequence_α
n642_match_alternate_s0:
                        lea              rax, [rip + .Lx659_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n642_match_alternate_as
n642_match_alternate_s1:
                        lea              rax, [rip + .Lx659_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n642_match_alternate_as
.Lx659_40:
                                                                                        jmp   n648_match_sequence_β
.Lx659_41:
                                                                                        jmp   n643_match_sequence_β
n642_match_alternate_as:
                                                                                        jmp   n641_match_arbno_as
n642_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n642_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx659_19:
                                                                                        jmp   n641_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n643_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n647_match_lit_α
n643_match_sequence_as:
                                                                                        jmp   n642_match_alternate_s1
n643_match_sequence_β:
                                                                                        jmp   n646_match_assign_cond_β
n643_match_sequence_af:
                                                                                        jmp   n642_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n644_match_assign_save_α:
                        lea              rdi, [rbp + 288]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n645_match_patref_α
n644_match_assign_save_β:
                        lea              rdi, [rbp + 288]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n647_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n645_match_patref_α:
                        mov              qword ptr [rbp + 320], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx664_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx664_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx664_10
.Lx664_9:
                        xor              eax, eax
.Lx664_10:
                        test             rax, rax
                                                                                        jz    .Lx664_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx664_4]
                        lea              rdx, [rip + .Lx664_5]
                                                                                        jmp   rax
.Lx664_4:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n646_match_assign_cond_α
.Lx664_5:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n644_match_assign_save_β
.Lx664_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx664_2:
                        test             rax, rax
                                                                                        je    .Lx664_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx664_7]
                        lea              rdx, [rip + .Lx664_8]
                                                                                        jmp   rax
.Lx664_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx664_2
.Lx664_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx664_2
.Lx664_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n644_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx664_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n646_match_assign_cond_α
.Lx664_6:
                        add              rsp, 16
                                                                                        jmp   n644_match_assign_save_β
n645_match_patref_β:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n644_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n646_match_assign_cond_α:
                        lea              rdi, [rbp + 288]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S7]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n642_match_alternate_s1
n646_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n645_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n647_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n642_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n642_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n644_match_assign_save_α
n647_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n642_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n648_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n652_match_lit_α
n648_match_sequence_as:
                                                                                        jmp   n642_match_alternate_s0
n648_match_sequence_β:
                                                                                        jmp   n651_match_assign_cond_β
n648_match_sequence_af:
                                                                                        jmp   n642_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n649_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n650_match_patref_α
n649_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n652_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n650_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx673_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx673_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx673_10
.Lx673_9:
                        xor              eax, eax
.Lx673_10:
                        test             rax, rax
                                                                                        jz    .Lx673_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx673_4]
                        lea              rdx, [rip + .Lx673_5]
                                                                                        jmp   rax
.Lx673_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n651_match_assign_cond_α
.Lx673_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n649_match_assign_save_β
.Lx673_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx673_2:
                        test             rax, rax
                                                                                        je    .Lx673_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx673_7]
                        lea              rdx, [rip + .Lx673_8]
                                                                                        jmp   rax
.Lx673_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx673_2
.Lx673_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx673_2
.Lx673_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n649_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx673_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n651_match_assign_cond_α
.Lx673_6:
                        add              rsp, 16
                                                                                        jmp   n649_match_assign_save_β
n650_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n649_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n651_match_assign_cond_α:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S8]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n642_match_alternate_s0
n651_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n650_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n652_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n642_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n642_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n649_match_assign_save_α
n652_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n642_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n653_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx678_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx678_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx678_10
.Lx678_9:
                        xor              eax, eax
.Lx678_10:
                        test             rax, rax
                                                                                        jz    .Lx678_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx678_4]
                        lea              rdx, [rip + .Lx678_5]
                                                                                        jmp   rax
.Lx678_4:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n641_match_arbno_α
.Lx678_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
.Lx678_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx678_2:
                        test             rax, rax
                                                                                        je    .Lx678_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx678_7]
                        lea              rdx, [rip + .Lx678_8]
                                                                                        jmp   rax
.Lx678_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx678_2
.Lx678_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx678_2
.Lx678_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx678_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n641_match_arbno_α
.Lx678_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n653_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx679_0
                        mov              ecx, dword ptr [rbp + 360]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx679_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx680_0
                        mov              eax, dword ptr [rbp + 360]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx680_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx680_0
                        mov              dword ptr [rbp + 360], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx680_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              rbp, qword ptr [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, qword ptr [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rcx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 368], r8
                        mov              dword ptr [rsp + 360], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + n681_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n681_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n694_match_patref_α
n681_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n681_match_sequence_β:
                                                                                        jmp   n682_match_arbno_β
n681_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n682_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   proc_PAT$5_γ
n682_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n683_match_alternate_α
n682_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n683_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   proc_PAT$5_γ
n682_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx698_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n683_match_alternate_β
.Lx698_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n694_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n683_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx700_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n689_match_sequence_α
.Lx700_21:
                        lea              rax, [rip + .Lx700_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n684_match_sequence_α
n683_match_alternate_s0:
                        lea              rax, [rip + .Lx700_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n683_match_alternate_as
n683_match_alternate_s1:
                        lea              rax, [rip + .Lx700_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n683_match_alternate_as
.Lx700_40:
                                                                                        jmp   n689_match_sequence_β
.Lx700_41:
                                                                                        jmp   n684_match_sequence_β
n683_match_alternate_as:
                                                                                        jmp   n682_match_arbno_as
n683_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n683_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx700_19:
                                                                                        jmp   n682_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n684_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n688_match_lit_α
n684_match_sequence_as:
                                                                                        jmp   n683_match_alternate_s1
n684_match_sequence_β:
                                                                                        jmp   n687_match_assign_cond_β
n684_match_sequence_af:
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n685_match_assign_save_α:
                        lea              rdi, [rbp + 288]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n686_match_patref_α
n685_match_assign_save_β:
                        lea              rdi, [rbp + 288]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n688_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n686_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx705_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx705_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx705_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx705_10
.Lx705_9:
                        xor              eax, eax
.Lx705_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx705_11:
                        test             rax, rax
                                                                                        jz    .Lx705_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx705_4]
                        lea              rdx, [rip + .Lx705_5]
                                                                                        jmp   rax
.Lx705_4:
                                                                                        jmp   n687_match_assign_cond_α
.Lx705_5:
                                                                                        jmp   n685_match_assign_save_β
.Lx705_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx705_2:
                        test             rax, rax
                                                                                        je    .Lx705_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx705_7]
                        lea              rdx, [rip + .Lx705_8]
                                                                                        jmp   rax
.Lx705_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx705_2
.Lx705_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx705_2
.Lx705_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n685_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx705_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n687_match_assign_cond_α
.Lx705_6:
                        add              rsp, 16
                                                                                        jmp   n685_match_assign_save_β
n686_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n687_match_assign_cond_α:
                        lea              rdi, [rbp + 288]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S10]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n683_match_alternate_s1
n687_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n686_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n688_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n683_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n683_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n685_match_assign_save_α
n688_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n689_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n693_match_lit_α
n689_match_sequence_as:
                                                                                        jmp   n683_match_alternate_s0
n689_match_sequence_β:
                                                                                        jmp   n692_match_assign_cond_β
n689_match_sequence_af:
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n690_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n691_match_patref_α
n690_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n693_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n691_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx714_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx714_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx714_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx714_10
.Lx714_9:
                        xor              eax, eax
.Lx714_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx714_11:
                        test             rax, rax
                                                                                        jz    .Lx714_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx714_4]
                        lea              rdx, [rip + .Lx714_5]
                                                                                        jmp   rax
.Lx714_4:
                                                                                        jmp   n692_match_assign_cond_α
.Lx714_5:
                                                                                        jmp   n690_match_assign_save_β
.Lx714_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx714_2:
                        test             rax, rax
                                                                                        je    .Lx714_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx714_7]
                        lea              rdx, [rip + .Lx714_8]
                                                                                        jmp   rax
.Lx714_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx714_2
.Lx714_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx714_2
.Lx714_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n690_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx714_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n692_match_assign_cond_α
.Lx714_6:
                        add              rsp, 16
                                                                                        jmp   n690_match_assign_save_β
n691_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n692_match_assign_cond_α:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S11]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n683_match_alternate_s0
n692_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n691_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n693_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n683_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n683_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n690_match_assign_save_α
n693_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n694_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx719_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx719_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx719_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx719_10
.Lx719_9:
                        xor              eax, eax
.Lx719_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx719_11:
                        test             rax, rax
                                                                                        jz    .Lx719_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx719_4]
                        lea              rdx, [rip + .Lx719_5]
                                                                                        jmp   rax
.Lx719_4:
                                                                                        jmp   n682_match_arbno_α
.Lx719_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx719_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx719_2:
                        test             rax, rax
                                                                                        je    .Lx719_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx719_7]
                        lea              rdx, [rip + .Lx719_8]
                                                                                        jmp   rax
.Lx719_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx719_2
.Lx719_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx719_2
.Lx719_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx719_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n682_match_arbno_α
.Lx719_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n694_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx720_0
                        mov              ecx, dword ptr [rbp + 360]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx720_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx721_0
                        mov              eax, dword ptr [rbp + 360]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx721_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx721_0
                        mov              dword ptr [rbp + 360], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx721_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              rbp, qword ptr [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, qword ptr [rbp + 392]
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
n722_lit_integer_α:
                        sub              rsp, 80
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
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n723_call_α
.Lx726_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n723_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lbynamefn268:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn268]                     # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx727_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx727_240:
                                                                                        jmp   n724_match_value_α
n723_call_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n724_match_value_α:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx728_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx728_4]
                        lea              rdx, [rip + .Lx728_5]
                                                                                        jmp   rax
.Lx728_4:
                                                                                        jmp   n725_match_fence1_α
.Lx728_5:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx728_0:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx728_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx728_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx728_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n725_match_fence1_α
.Lx728_6:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
n724_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n725_match_fence1_α:
                        mov              rsp, rbp
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanhit
n725_match_fence1_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx731_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx731_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx732_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx732_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx732_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx732_0:
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
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 304], r8
                        mov              dword ptr [rsp + 296], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n733_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n733_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n743_lit_integer_α
n733_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n733_match_sequence_β:
                                                                                        jmp   n735_match_rpos_β
n733_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n735_match_rpos_α
n734_lit_integer_β:
                                                                                        jmp   n736_match_arbno_β
.Lx747_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n735_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n736_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n735_match_rpos_β:
                                                                                        jmp   n736_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n736_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n734_lit_integer_α
n736_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n737_match_sequence_α
n736_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n737_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n734_lit_integer_α
n736_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx750_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n737_match_sequence_β
.Lx750_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n744_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n737_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n742_match_patref_α
n737_match_sequence_as:
                                                                                        jmp   n736_match_arbno_as
n737_match_sequence_β:
                                                                                        jmp   n740_match_assign_cond_β
n737_match_sequence_af:
                                                                                        jmp   n736_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n738_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n739_match_patref_α
n738_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n741_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n739_match_patref_α:
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx755_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx755_4]
                        lea              rdx, [rip + .Lx755_5]
                                                                                        jmp   rax
.Lx755_4:
                                                                                        jmp   n740_match_assign_cond_α
.Lx755_5:
                                                                                        jmp   n738_match_assign_save_β
.Lx755_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx755_2:
                        test             rax, rax
                                                                                        je    .Lx755_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx755_7]
                        lea              rdx, [rip + .Lx755_8]
                                                                                        jmp   rax
.Lx755_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx755_2
.Lx755_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx755_2
.Lx755_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n738_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx755_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n740_match_assign_cond_α
.Lx755_6:
                        add              rsp, 16
                                                                                        jmp   n738_match_assign_save_β
n739_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n740_match_assign_cond_α:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S13]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n736_match_arbno_as
n740_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n739_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n741_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]                    # eol
                        mov              rdx, qword ptr [1879052648]
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n738_match_assign_save_α
.Lx758_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n742_match_patref_β
.Lx758_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
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
                                                                                        js    n742_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx758_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n738_match_assign_save_α
.Lx758_6:
                        add              rsp, 16
                                                                                        jmp   n742_match_patref_β
n741_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n742_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n742_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx759_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx759_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx759_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx759_10
.Lx759_9:
                        xor              eax, eax
.Lx759_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx759_11:
                        test             rax, rax
                                                                                        jz    .Lx759_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx759_4]
                        lea              rdx, [rip + .Lx759_5]
                                                                                        jmp   rax
.Lx759_4:
                                                                                        jmp   n741_match_patref_α
.Lx759_5:
                                                                                        jmp   n736_match_arbno_af
.Lx759_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx759_2:
                        test             rax, rax
                                                                                        je    .Lx759_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx759_7]
                        lea              rdx, [rip + .Lx759_8]
                                                                                        jmp   rax
.Lx759_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx759_2
.Lx759_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx759_2
.Lx759_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n736_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx759_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n741_match_patref_α
.Lx759_6:
                        add              rsp, 16
                                                                                        jmp   n736_match_arbno_af
n742_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n744_match_pos_α
n743_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx760_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n744_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n736_match_arbno_α
n744_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx762_0
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx762_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx763_0
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx763_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx763_0
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx763_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 272]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, qword ptr [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, qword ptr [rbp + 328]
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 4816
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
                        mov              esi, 144
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
                        mov              esi, 224
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
                        mov              esi, 352
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
                        mov              esi, 352
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
                        mov              esi, 288
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
.Lgvan24:               .string          "nl"
.Lgvan25:               .string          "line"
.Lgvan26:               .string          "b1"
.Lgvan27:               .string          "b2"
.Lgvan28:               .string          "src"
.Lgvan29:               .string          "t0"
.Lgvan30:               .string          "t1"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 31
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 31
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
#         DEFINE('EMIT()')                        :(EMIT_x)
#-----------------------------------------------------------------------------------------------------------------------
n764_statement_α:
                                                                                        jmp   n765_statement_α
n764_statement_β:
                                                                                        jmp   n765_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n765_statement_α:
                                                                                        jmp   n766_statement_α
n765_statement_β:
                                                                                        jmp   n766_statement_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n766_statement_α:
                                                                                        jmp   n767_statement_α
n766_statement_β:
                                                                                        jmp   n767_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n767_statement_α:
                                                                                        jmp   n768_statement_α
n767_statement_β:
                                                                                        jmp   n768_statement_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n768_statement_α:
                                                                                        jmp   n769_statement_α
n768_statement_β:
                                                                                        jmp   n769_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n769_statement_α:
                                                                                        jmp   n770_statement_α
n769_statement_β:
                                                                                        jmp   n770_statement_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n770_statement_α:
                                                                                        jmp   n771_statement_α
n770_statement_β:
                                                                                        jmp   n771_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n771_statement_α:
                                                                                        jmp   n772_statement_α
n771_statement_β:
                                                                                        jmp   n772_statement_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n772_statement_α:
                                                                                        jmp   n773_statement_α
n772_statement_β:
                                                                                        jmp   n773_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n773_statement_α:
                                                                                        jmp   n774_statement_α
n773_statement_β:
                                                                                        jmp   n774_statement_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n774_statement_α:
                                                                                        jmp   n775_statement_α
n774_statement_β:
                                                                                        jmp   n775_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n775_statement_α:
                                                                                        jmp   n776_statement_α
n775_statement_β:
                                                                                        jmp   n776_statement_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n776_statement_α:
                                                                                        jmp   n777_statement_α
n776_statement_β:
                                                                                        jmp   n777_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n777_statement_α:
                                                                                        jmp   n778_statement_α
n777_statement_β:
                                                                                        jmp   n778_statement_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(SGN_x)
#-----------------------------------------------------------------------------------------------------------------------
n778_statement_α:
                                                                                        jmp   n779_statement_α
n778_statement_β:
                                                                                        jmp   n779_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n779_statement_α:
                                                                                        jmp   n780_lit_integer_α
n779_statement_β:
                                                                                        jmp   n780_lit_integer_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1174_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n781_call_α
n780_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n784_keyword_snobol4_α
.Lx1174_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n781_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1176:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1176]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1175_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n784_keyword_snobol4_α
.Lx1175_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n782_assign_α
n781_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n784_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n782_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n783_statement_α
n782_assign_β:
                        add              rsp, 32
                                                                                        jmp   n784_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_α:
                        add              rsp, 32
                                                                                        jmp   n784_keyword_snobol4_α
n783_statement_β:
                        add              rsp, 32
                                                                                        jmp   n784_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n784_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1180_0]               # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n785_assign_α
n784_keyword_snobol4_β:
                        add              rsp, 16
                                                                                        jmp   n787_lit_string_α
.Lx1180_0:
                        .quad            .Lx1180_0_s
.Lx1180_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n785_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # LCASE
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n786_statement_α
n785_assign_β:
                        add              rsp, 16
                                                                                        jmp   n787_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_statement_α:
                        add              rsp, 16
                                                                                        jmp   n787_lit_string_α
n786_statement_β:
                        add              rsp, 16
                                                                                        jmp   n787_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1184_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n788_assign_α
n787_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n790_lit_string_α
.Lx1184_0:
                        .quad            .Lx1184_0_s
.Lx1184_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n788_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # DIGITS
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n789_statement_α
n788_assign_β:
                        add              rsp, 16
                                                                                        jmp   n790_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n789_statement_α:
                        add              rsp, 16
                                                                                        jmp   n790_lit_string_α
n789_statement_β:
                        add              rsp, 16
                                                                                        jmp   n790_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n791_call_α
n790_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n794_lit_string_α
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n791_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1190:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1190]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1189_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n794_lit_string_α
.Lx1189_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n792_assign_α
n791_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n794_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n792_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # V
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n793_statement_α
n792_assign_β:
                        add              rsp, 32
                                                                                        jmp   n794_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n793_statement_α:
                        add              rsp, 32
                                                                                        jmp   n794_lit_string_α
n793_statement_β:
                        add              rsp, 32
                                                                                        jmp   n794_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1194_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n795_call_α
n794_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n798_lit_string_α
.Lx1194_0:
                        .quad            .Lx1194_0_s
.Lx1194_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1196:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1196]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1195_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n798_lit_string_α
.Lx1195_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n796_assign_α
n795_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n798_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n796_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # I
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n797_statement_α
n796_assign_β:
                        add              rsp, 32
                                                                                        jmp   n798_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n797_statement_α:
                        add              rsp, 32
                                                                                        jmp   n798_lit_string_α
n797_statement_β:
                        add              rsp, 32
                                                                                        jmp   n798_lit_string_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1200_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n799_call_α
n798_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1200_0:
                        .quad            .Lx1200_0_s
.Lx1200_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n799_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1202:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1202]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1201_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1201_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n800_assign_α
n799_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n800_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # A
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n801_statement_α
n800_assign_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n801_statement_α:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
n801_statement_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n803_call_α
n802_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n806_lit_string_α
.Lx1206_0:
                        .quad            .Lx1206_0_s
.Lx1206_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n803_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1208:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1208]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1207_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n806_lit_string_α
.Lx1207_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n804_assign_α
n803_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n806_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n804_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # F
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n805_statement_α
n804_assign_β:
                        add              rsp, 32
                                                                                        jmp   n806_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n805_statement_α:
                        add              rsp, 32
                                                                                        jmp   n806_lit_string_α
n805_statement_β:
                        add              rsp, 32
                                                                                        jmp   n806_lit_string_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n807_call_α
n806_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n810_lit_string_α
.Lx1212_0:
                        .quad            .Lx1212_0_s
.Lx1212_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n807_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1214:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1214]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1213_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n810_lit_string_α
.Lx1213_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n808_assign_α
n807_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n810_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n808_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # T
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n809_statement_α
n808_assign_β:
                        add              rsp, 32
                                                                                        jmp   n810_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n809_statement_α:
                        add              rsp, 32
                                                                                        jmp   n810_lit_string_α
n809_statement_β:
                        add              rsp, 32
                                                                                        jmp   n810_lit_string_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n811_call_α
n810_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n814_lit_string_α
.Lx1218_0:
                        .quad            .Lx1218_0_s
.Lx1218_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n811_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1220:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1220]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1219_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n814_lit_string_α
.Lx1219_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n812_assign_α
n811_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n814_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n812_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # X
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n813_statement_α
n812_assign_β:
                        add              rsp, 32
                                                                                        jmp   n814_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n813_statement_α:
                        add              rsp, 32
                                                                                        jmp   n814_lit_string_α
n813_statement_β:
                        add              rsp, 32
                                                                                        jmp   n814_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n815_call_α
n814_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n818_lit_string_α
.Lx1224_0:
                        .quad            .Lx1224_0_s
.Lx1224_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n815_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1226:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1226]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1225_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n818_lit_string_α
.Lx1225_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n816_assign_α
n815_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n816_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # eol
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n817_statement_α
n816_assign_β:
                        add              rsp, 32
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_statement_α:
                        add              rsp, 32
                                                                                        jmp   n818_lit_string_α
n817_statement_β:
                        add              rsp, 32
                                                                                        jmp   n818_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n819_call_α
n818_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n822_lit_string_α
.Lx1230_0:
                        .quad            .Lx1230_0_s
.Lx1230_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n819_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1232:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1232]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1231_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n822_lit_string_α
.Lx1231_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n820_assign_α
n819_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n822_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n820_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # C
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n821_statement_α
n820_assign_β:
                        add              rsp, 32
                                                                                        jmp   n822_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n821_statement_α:
                        add              rsp, 32
                                                                                        jmp   n822_lit_string_α
n821_statement_β:
                        add              rsp, 32
                                                                                        jmp   n822_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1236_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n823_lit_integer_α
n822_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n826_lit_integer_α
.Lx1236_0:
                        .quad            .Lx1236_0_s
.Lx1236_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n823_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n824_call_α
n823_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n826_lit_integer_α
.Lx1237_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n824_call_α:
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
.Lrkfnzd1239:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1239]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1238_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n826_lit_integer_α
.Lx1238_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n825_statement_α
n824_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n826_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n825_statement_α:
                        add              rsp, 48
                                                                                        jmp   n826_lit_integer_α
n825_statement_β:
                        add              rsp, 48
                                                                                        jmp   n826_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n827_call_α
n826_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n830_call_α
.Lx1242_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n827_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd346:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd346]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1243_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n830_call_α
.Lx1243_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n828_assign_α
n827_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n830_call_α
#-----------------------------------------------------------------------------------------------------------------------
n828_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax                    # nl
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n829_statement_α
n828_assign_β:
                        add              rsp, 32
                                                                                        jmp   n830_call_α
#-----------------------------------------------------------------------------------------------------------------------
n829_statement_α:
                        add              rsp, 32
                                                                                        jmp   n830_call_α
n829_statement_β:
                        add              rsp, 32
                                                                                        jmp   n830_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n830_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1248:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1248]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1247_240
                        add              rsp, 16
                                                                                        jmp   n833_var_α
.Lx1247_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n831_assign_α
n830_call_β:
                        add              rsp, 16
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n831_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # vars
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n832_statement_α
n831_assign_β:
                        add              rsp, 16
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n832_statement_α:
                        add              rsp, 16
                                                                                        jmp   n833_var_α
n832_statement_β:
                        add              rsp, 16
                                                                                        jmp   n833_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n833_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n834_lit_string_α
n833_var_β:
                        add              rsp, 16
                                                                                        jmp   n839_var_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n835_subscript_α
n834_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n839_var_α
.Lx1253_0:
                        .quad            .Lx1253_0_s
.Lx1253_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n835_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1254_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n839_var_α
.Lx1254_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n836_lit_integer_α
n835_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n839_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n837_assign_var_α
n836_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n839_var_α
.Lx1255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n837_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1256_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n839_var_α
.Lx1256_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n838_statement_α
n837_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n839_var_α
#-----------------------------------------------------------------------------------------------------------------------
n838_statement_α:
                        add              rsp, 80
                                                                                        jmp   n839_var_α
n838_statement_β:
                        add              rsp, 80
                                                                                        jmp   n839_var_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n839_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n840_lit_string_α
n839_var_β:
                        add              rsp, 16
                                                                                        jmp   n845_var_α
#-----------------------------------------------------------------------------------------------------------------------
n840_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1260_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n841_subscript_α
n840_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n845_var_α
.Lx1260_0:
                        .quad            .Lx1260_0_s
.Lx1260_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n841_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1261_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n845_var_α
.Lx1261_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n842_lit_integer_α
n841_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n845_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1262_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n843_assign_var_α
n842_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n845_var_α
.Lx1262_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n843_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1263_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n845_var_α
.Lx1263_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n844_statement_α
n843_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n845_var_α
#-----------------------------------------------------------------------------------------------------------------------
n844_statement_α:
                        add              rsp, 80
                                                                                        jmp   n845_var_α
n844_statement_β:
                        add              rsp, 80
                                                                                        jmp   n845_var_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n846_lit_string_α
n845_var_β:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1267_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n847_subscript_α
n846_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n851_var_α
.Lx1267_0:
                        .quad            .Lx1267_0_s
.Lx1267_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n847_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1268_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n851_var_α
.Lx1268_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n848_lit_integer_α
n847_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n848_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n849_assign_var_α
n848_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n851_var_α
.Lx1269_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n849_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1270_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n851_var_α
.Lx1270_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n850_statement_α
n849_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_statement_α:
                        add              rsp, 80
                                                                                        jmp   n851_var_α
n850_statement_β:
                        add              rsp, 80
                                                                                        jmp   n851_var_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n851_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1273_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1273_240
                        add              rsp, 16
                                                                                        jmp   n891_var_α
.Lx1273_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n852_assign_α
n851_var_β:
                        add              rsp, 16
                                                                                        jmp   n891_var_α
.Lx1273_0:
                        .quad            .Lx1273_0_s
.Lx1273_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # line
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n853_statement_α
n852_assign_β:
                        add              rsp, 16
                                                                                        jmp   n891_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_statement_α:
                        add              rsp, 16
                                                                                        jmp   n854_var_α
n853_statement_β:
                        add              rsp, 16
                                                                                        jmp   n891_var_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n855_var_α
n854_var_β:
                        add              rsp, 16
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n855_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]                    # line
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_binop_α
n855_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n856_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n857_var_α
n856_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n857_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]                    # nl
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n858_binop_α
n857_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n858_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n859_assign_α
n858_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n859_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n860_statement_α
n859_assign_β:
                        add              rsp, 80
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n860_statement_α:
                        add              rsp, 80
                                                                                        jmp   n861_var_α
n860_statement_β:
                        add              rsp, 80
                                                                                        jmp   n861_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n861_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n862_call_α
n861_var_β:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n862_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1287:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1287]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1286_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n851_var_α
.Lx1286_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n863_lit_integer_α
n862_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n863_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1288_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n864_coerce_numeric_α
n863_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n851_var_α
.Lx1288_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n864_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1290_1
                        cmp              eax, 3
                                                                                        jne   .Lx1290_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1290_0
.Lx1290_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n865_coerce_numeric_α
.Lx1290_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n865_coerce_numeric_α
n864_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n865_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1292_1
                        cmp              eax, 3
                                                                                        jne   .Lx1292_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1292_0
.Lx1292_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n866_cmp_test_α
.Lx1292_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n866_cmp_test_α
n865_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n866_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1294_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n851_var_α
.Lx1294_240:
                                                                                        jmp   n867_statement_α
n866_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n867_statement_α:
                        add              rsp, 96
                                                                                        jmp   n868_var_α
n867_statement_β:
                        add              rsp, 96
                                                                                        jmp   n851_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n868_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n869_var_α
n868_var_β:
                        add              rsp, 16
                                                                                        jmp   n873_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n869_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n870_binop_α
n869_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n873_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n871_assign_α
n870_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n873_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n871_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n872_statement_α
n871_assign_β:
                        add              rsp, 48
                                                                                        jmp   n873_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n872_statement_α:
                        add              rsp, 48
                                                                                        jmp   n873_lit_string_α
n872_statement_β:
                        add              rsp, 48
                                                                                        jmp   n873_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n873_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1303_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n874_assign_α
n873_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n876_var_α
.Lx1303_0:
                        .quad            .Lx1303_0_s
.Lx1303_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n874_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n875_statement_α
n874_assign_β:
                        add              rsp, 16
                                                                                        jmp   n876_var_α
#-----------------------------------------------------------------------------------------------------------------------
n875_statement_α:
                        add              rsp, 16
                                                                                        jmp   n876_var_α
n875_statement_β:
                        add              rsp, 16
                                                                                        jmp   n876_var_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n876_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n877_call_α
n876_var_β:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n877_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1309:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1309]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1308_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n851_var_α
.Lx1308_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n878_lit_integer_α
n877_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n878_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1310_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n879_coerce_numeric_α
n878_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n851_var_α
.Lx1310_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n879_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1312_1
                        cmp              eax, 3
                                                                                        jne   .Lx1312_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1312_0
.Lx1312_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n880_coerce_numeric_α
.Lx1312_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n880_coerce_numeric_α
n879_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n880_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1314_1
                        cmp              eax, 3
                                                                                        jne   .Lx1314_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1314_0
.Lx1314_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n881_cmp_test_α
.Lx1314_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n881_cmp_test_α
n880_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n881_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1316_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n851_var_α
.Lx1316_240:
                                                                                        jmp   n882_statement_α
n881_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n882_statement_α:
                        add              rsp, 96
                                                                                        jmp   n883_var_α
n882_statement_β:
                        add              rsp, 96
                                                                                        jmp   n851_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n884_var_α
n883_var_β:
                        add              rsp, 16
                                                                                        jmp   n888_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n884_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n885_binop_α
n884_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n888_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n886_assign_α
n885_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n888_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n887_statement_α
n886_assign_β:
                        add              rsp, 48
                                                                                        jmp   n888_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n887_statement_α:
                        add              rsp, 48
                                                                                        jmp   n888_lit_string_α
n887_statement_β:
                        add              rsp, 48
                                                                                        jmp   n888_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n888_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1325_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n889_assign_α
n888_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
.Lx1325_0:
                        .quad            .Lx1325_0_s
.Lx1325_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n889_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n890_statement_α
n889_assign_β:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n890_statement_α:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
n890_statement_β:
                        add              rsp, 16
                                                                                        jmp   n851_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n891_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_var_α
n891_var_β:
                        add              rsp, 16
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n892_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n893_binop_α
n892_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n893_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n894_var_α
n893_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n894_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n895_binop_α
n894_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n895_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n896_assign_α
n895_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n896_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n897_statement_α
n896_assign_β:
                        add              rsp, 80
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n897_statement_α:
                        add              rsp, 80
                                                                                        jmp   n898_call_α
n897_statement_β:
                        add              rsp, 80
                                                                                        jmp   n898_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1338:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1338]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1337_240
                        add              rsp, 16
                                                                                        jmp   n901_var_α
.Lx1337_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n899_assign_α
n898_call_β:
                        add              rsp, 16
                                                                                        jmp   n901_var_α
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # t0
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n900_statement_α
n899_assign_β:
                        add              rsp, 16
                                                                                        jmp   n901_var_α
#-----------------------------------------------------------------------------------------------------------------------
n900_statement_α:
                        add              rsp, 16
                                                                                        jmp   n901_var_α
n900_statement_β:
                        add              rsp, 16
                                                                                        jmp   n901_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n901_var_α:
                        sub              rsp, 128
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n902_match_begin_α
n901_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n916_call_α
#-----------------------------------------------------------------------------------------------------------------------
n902_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
                        mov              qword ptr [rbp + 32], rsp                      # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax                      # patstk_mark
                        mov              dword ptr [rbp + 16], 0                        # start_δ
.Lx1344_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n903_match_patref_α
n902_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx1344_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1344_1
                                                                                        jmp   .Lx1344_0
.Lx1344_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx1344_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1344_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n916_call_α
#-----------------------------------------------------------------------------------------------------------------------
n903_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1345_11
                        mov              rax, qword ptr [1879052656]                    # C
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 8
                                                                                        jne   .Lx1345_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1345_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1345_10
.Lx1345_9:
                        xor              eax, eax
.Lx1345_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx1345_11:
                        test             rax, rax
                                                                                        jz    .Lx1345_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1345_4]
                        lea              rdx, [rip + .Lx1345_5]
                                                                                        jmp   rax
.Lx1345_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n904_match_end_α
.Lx1345_5:
                                                                                        jmp   n902_match_begin_β
.Lx1345_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1345_2:
                        test             rax, rax
                                                                                        je    .Lx1345_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1345_7]
                        lea              rdx, [rip + .Lx1345_8]
                                                                                        jmp   rax
.Lx1345_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1345_2
.Lx1345_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1345_2
.Lx1345_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n902_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1345_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n904_match_end_α
.Lx1345_6:
                        add              rsp, 16
                                                                                        jmp   n902_match_begin_β
n903_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n904_match_end_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1347_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1347_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1347_1:
                        test             rax, rax
                                                                                        je    .Lx1347_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1347_3]
                        lea              rdx, [rip + .Lx1347_4]
                                                                                        jmp   rax
.Lx1347_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1347_1
.Lx1347_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1347_1
.Lx1347_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1347_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1347_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n905_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n905_statement_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n906_call_α
n905_statement_β:
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 128
                                                                                        jmp   n916_call_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n906_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1351:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1351]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1350_240
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
.Lx1350_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n907_assign_α
n906_call_β:
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n908_statement_α
n907_assign_β:
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n908_statement_α:
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
n908_statement_β:
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n909_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1355_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n910_var_α
n909_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1355_0:
                        .quad            .Lx1355_0_s
.Lx1355_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n910_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n911_var_α
n910_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n911_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n912_binop_α
n911_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n912_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1358_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1358_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n913_binop_α
n912_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n913_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n914_assign_α
n913_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n914_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1360_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n915_statement_α
n914_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1360_0:
                        .quad            .Lx1360_0_s
.Lx1360_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n915_statement_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
n915_statement_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n916_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1364:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1364]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1363_240
                        add              rsp, 16
                                                                                        jmp   n919_lit_string_α
.Lx1363_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_assign_α
n916_call_β:
                        add              rsp, 16
                                                                                        jmp   n919_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n917_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n918_statement_α
n917_assign_β:
                        add              rsp, 16
                                                                                        jmp   n919_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n918_statement_α:
                        add              rsp, 16
                                                                                        jmp   n919_lit_string_α
n918_statement_β:
                        add              rsp, 16
                                                                                        jmp   n919_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n919_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1368_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n920_assign_α
n919_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_α
.Lx1368_0:
                        .quad            .Lx1368_0_s
.Lx1368_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n920_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1369_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n921_statement_α
n920_assign_β:
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_α
.Lx1369_0:
                        .quad            .Lx1369_0_s
.Lx1369_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n921_statement_α:
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_α
n921_statement_β:
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1372_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n923_var_α
n922_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1372_0:
                        .quad            .Lx1372_0_s
.Lx1372_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n923_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n924_var_α
n923_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n925_binop_α
n924_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n925_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1375_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1375_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n926_binop_α
n925_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n926_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n927_assign_α
n926_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n927_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1377_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n928_statement_α
n927_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1377_0:
                        .quad            .Lx1377_0_s
.Lx1377_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n928_statement_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
n928_statement_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n929_goto_α:
                                                                                        jmp   n930_var_α
n929_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n930_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n931_lit_integer_α
n930_var_β:
                        add              rsp, 16
                                                                                        jmp   n937_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n931_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1382_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n932_subscript_α
n931_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n937_lit_integer_α
.Lx1382_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n932_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1383_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n937_lit_integer_α
.Lx1383_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n933_deref_α
n932_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n937_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n933_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1384_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n937_lit_integer_α
.Lx1384_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n934_call_α
n933_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n937_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n934_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1386_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1386_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1386_6]
                        lea              rdx, [rip + .Lx1386_7]
                                                                                        jmp   rax
.Lx1386_6:
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
                                                                                        jmp   .Lx1386_2
.Lx1386_7:
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
                                                                                        jmp   .Lx1386_2
.Lx1386_5:
                        add              rsp, 32
.Lx1386_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1386_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n937_lit_integer_α
.Lx1386_240:
                                                                                        jmp   n935_assign_α
n934_call_β:
                                                                                        jmp   n937_lit_integer_α
.Lx1386_0:
                        .quad            .Lx1386_0_s
.Lx1386_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n935_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1387_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n936_statement_α
n935_assign_β:
                        add              rsp, 80
                                                                                        jmp   n937_lit_integer_α
.Lx1387_0:
                        .quad            .Lx1387_0_s
.Lx1387_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n936_statement_α:
                        add              rsp, 80
                                                                                        jmp   n937_lit_integer_α
n936_statement_β:
                        add              rsp, 80
                                                                                        jmp   n937_lit_integer_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n937_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1390_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n938_assign_α
n937_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n940_lit_string_α
.Lx1390_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n938_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n939_statement_α
n938_assign_β:
                        add              rsp, 16
                                                                                        jmp   n940_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n939_statement_α:
                        add              rsp, 16
                                                                                        jmp   n940_lit_string_α
n939_statement_β:
                        add              rsp, 16
                                                                                        jmp   n940_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n940_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1394_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n941_call_α
n940_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1394_0:
                        .quad            .Lx1394_0_s
.Lx1394_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n941_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1396:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1396]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1395_240
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1395_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n942_assign_α
n941_call_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n942_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n943_statement_α
n942_assign_β:
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n943_statement_α:
                                                                                        jmp   n944_lit_string_α
n943_statement_β:
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1400_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n945_call_α
n944_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n947_save_restore_α
.Lx1400_0:
                        .quad            .Lx1400_0_s
.Lx1400_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n945_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1402:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1402]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1401_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n947_save_restore_α
.Lx1401_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n946_save_restore_α
n945_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n947_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n946_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n947_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n948_goto_α:
                                                                                        jmp   n765_statement_α
n948_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n949_goto_α:
                                                                                        jmp   n950_var_α
n949_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n950_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n951_lit_integer_α
n950_var_β:
                        add              rsp, 16
                                                                                        jmp   n955_var_α
#-----------------------------------------------------------------------------------------------------------------------
n951_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1410_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n952_binop_α
n951_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n955_var_α
.Lx1410_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n952_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1411_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n955_var_α
.Lx1411_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n953_assign_α
n952_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n955_var_α
#-----------------------------------------------------------------------------------------------------------------------
n953_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n954_statement_α
n953_assign_β:
                        add              rsp, 48
                                                                                        jmp   n955_var_α
#-----------------------------------------------------------------------------------------------------------------------
n954_statement_α:
                        add              rsp, 48
                                                                                        jmp   n955_var_α
n954_statement_β:
                        add              rsp, 48
                                                                                        jmp   n955_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n955_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n956_var_α
n955_var_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n956_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n957_subscript_α
n956_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n957_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1417_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
.Lx1417_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n958_assign_α
n957_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n958_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n959_statement_α
n958_assign_β:
                        add              rsp, 48
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n959_statement_α:
                        add              rsp, 48
                                                                                        jmp   n944_lit_string_α
n959_statement_β:
                        add              rsp, 48
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n960_goto_α:
                                                                                        jmp   n767_statement_α
n960_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n961_goto_α:
                                                                                        jmp   n962_var_α
n961_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n962_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n963_match_begin_α
n962_var_β:
                        add              rsp, 16
                                                                                        jmp   n978_var_α
#-----------------------------------------------------------------------------------------------------------------------
n963_match_begin_α:
                        sub              rsp, 448
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
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              rdi, qword ptr [rsp + 448]                     # var
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 360], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 368], r13                     # outer_Σ
                        mov              qword ptr [rbp + 376], r14                     # outer_δ
                        mov              qword ptr [rbp + 384], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 392], rax                     # cap_gen
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
.Lx1425_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n964_match_sequence_α
n963_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1425_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1425_1
                                                                                        jmp   .Lx1425_0
.Lx1425_1:
                        mov              r10, qword ptr [1879048192]
.Lx1425_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1425_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 368]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 376]                     # outer_δ
                        mov              r15, qword ptr [rbp + 384]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 392]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 264]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n978_var_α
#-----------------------------------------------------------------------------------------------------------------------
n964_match_sequence_α:
                                                                                        jmp   n976_lit_integer_α
n964_match_sequence_as:
                                                                                        jmp   n965_match_end_α
n964_match_sequence_β:
                                                                                        jmp   n974_match_rpos_β
n964_match_sequence_af:
                                                                                        jmp   n963_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n965_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1429_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1429_9
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
.Lx1429_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1429_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1429_1:
                        test             rax, rax
                                                                                        je    .Lx1429_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1429_3]
                        lea              rdx, [rip + .Lx1429_4]
                                                                                        jmp   rax
.Lx1429_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1429_1
.Lx1429_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1429_1
.Lx1429_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1429_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1429_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 368]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 376]                     # outer_δ
                        mov              r15, qword ptr [rbp + 384]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 392]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n966_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n966_statement_α:
                        mov              rbp, qword ptr [rbp + 360]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n967_var_α
n966_statement_β:
                        mov              rbp, qword ptr [rbp + 360]
                        add              rsp, 464
                                                                                        jmp   n978_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n967_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n968_var_α
n967_var_β:
                        add              rsp, 16
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n968_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n969_subscript_α
n968_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n969_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1434_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n946_save_restore_α
.Lx1434_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n970_deref_α
n969_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n970_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1435_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n946_save_restore_α
.Lx1435_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n971_assign_α
n970_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n971_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n972_statement_α
n971_assign_β:
                        add              rsp, 64
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n972_statement_α:
                        add              rsp, 64
                                                                                        jmp   n946_save_restore_α
n972_statement_β:
                        add              rsp, 64
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n973_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1439_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n974_match_rpos_α
n973_lit_integer_β:
                                                                                        jmp   n975_match_any_β
.Lx1439_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n974_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n975_match_any_β
                                                                                        jmp   n965_match_end_α
n974_match_rpos_β:
                                                                                        jmp   n975_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n975_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n963_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n963_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n973_lit_integer_α
n975_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n963_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1443_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n977_match_pos_α
n976_lit_integer_β:
                                                                                        jmp   n963_match_begin_β
.Lx1443_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n977_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n963_match_begin_β
                                                                                        jmp   n975_match_any_α
n977_match_pos_β:
                                                                                        jmp   n963_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n978_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n979_assign_α
n978_var_β:
                        add              rsp, 16
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n979_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n980_statement_α
n979_assign_β:
                        add              rsp, 16
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n980_statement_α:
                        add              rsp, 16
                                                                                        jmp   n946_save_restore_α
n980_statement_β:
                        add              rsp, 16
                                                                                        jmp   n946_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n981_goto_α:
                                                                                        jmp   n978_var_α
n981_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n982_goto_α:
                                                                                        jmp   n769_statement_α
n982_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n983_goto_α:
                                                                                        jmp   n984_var_α
n983_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n984_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n985_var_α
n984_var_β:
                        add              rsp, 16
                                                                                        jmp   n991_var_α
#-----------------------------------------------------------------------------------------------------------------------
n985_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n986_subscript_α
n985_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n991_var_α
#-----------------------------------------------------------------------------------------------------------------------
n986_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1454_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n991_var_α
.Lx1454_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n987_deref_α
n986_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n991_var_α
#-----------------------------------------------------------------------------------------------------------------------
n987_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1455_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n991_var_α
.Lx1455_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n988_call_α
n987_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n991_var_α
#-----------------------------------------------------------------------------------------------------------------------
n988_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1457_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1457_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1457_6]
                        lea              rdx, [rip + .Lx1457_7]
                                                                                        jmp   rax
.Lx1457_6:
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
                                                                                        jmp   .Lx1457_2
.Lx1457_7:
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
                                                                                        jmp   .Lx1457_2
.Lx1457_5:
                        add              rsp, 32
.Lx1457_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1457_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n991_var_α
.Lx1457_240:
                                                                                        jmp   n989_assign_α
n988_call_β:
                                                                                        jmp   n991_var_α
.Lx1457_0:
                        .quad            .Lx1457_0_s
.Lx1457_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n989_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n990_statement_α
n989_assign_β:
                        add              rsp, 80
                                                                                        jmp   n991_var_α
#-----------------------------------------------------------------------------------------------------------------------
n990_statement_α:
                        add              rsp, 80
                                                                                        jmp   n991_var_α
n990_statement_β:
                        add              rsp, 80
                                                                                        jmp   n991_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n991_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n992_lit_integer_α
n991_var_β:
                        add              rsp, 16
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n992_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1462_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n993_binop_α
n992_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n996_var_α
.Lx1462_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n993_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1463_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n996_var_α
.Lx1463_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n994_assign_α
n993_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n994_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n995_statement_α
n994_assign_β:
                        add              rsp, 48
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n995_statement_α:
                        add              rsp, 48
                                                                                        jmp   n996_var_α
n995_statement_β:
                        add              rsp, 48
                                                                                        jmp   n996_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n996_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n997_var_α
n996_var_β:
                        add              rsp, 16
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n997_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n998_subscript_α
n997_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n998_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1469_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1008_lit_string_α
.Lx1469_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n999_var_α
n998_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n999_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1000_var_α
n999_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1001_subscript_α
n1000_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1472_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1008_lit_string_α
.Lx1472_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1002_deref_α
n1001_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1473_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1008_lit_string_α
.Lx1473_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1003_call_α
n1002_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1475_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1475_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1475_6]
                        lea              rdx, [rip + .Lx1475_7]
                                                                                        jmp   rax
.Lx1475_6:
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
                                                                                        jmp   .Lx1475_2
.Lx1475_7:
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
                                                                                        jmp   .Lx1475_2
.Lx1475_5:
                        add              rsp, 32
.Lx1475_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1475_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1008_lit_string_α
.Lx1475_240:
                                                                                        jmp   n1004_var_α
n1003_call_β:
                                                                                        jmp   n1008_lit_string_α
.Lx1475_0:
                        .quad            .Lx1475_0_s
.Lx1475_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1005_binop_α
n1004_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1477_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1008_lit_string_α
.Lx1477_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1006_assign_var_α
n1005_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1478_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1008_lit_string_α
.Lx1478_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1007_statement_α
n1006_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1008_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_statement_α:
                        add              rsp, 176
                                                                                        jmp   n1008_lit_string_α
n1007_statement_β:
                        add              rsp, 176
                                                                                        jmp   n1008_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1008_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1481_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1009_call_α
n1008_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1481_0:
                        .quad            .Lx1481_0_s
.Lx1481_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1009_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1483:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1483]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1482_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1482_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1010_assign_α
n1009_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n1011_statement_α
n1010_assign_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_statement_α:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
n1011_statement_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1012_goto_α:
                                                                                        jmp   n771_statement_α
n1012_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1013_goto_α:
                                                                                        jmp   n1014_var_α
n1013_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1014_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1015_var_α
n1014_var_β:
                        add              rsp, 16
                                                                                        jmp   n1021_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1016_subscript_α
n1015_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1021_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1491_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1021_var_α
.Lx1491_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1017_deref_α
n1016_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1021_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1492_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1021_var_α
.Lx1492_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1018_call_α
n1017_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1021_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1494_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1494_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1494_6]
                        lea              rdx, [rip + .Lx1494_7]
                                                                                        jmp   rax
.Lx1494_6:
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
                                                                                        jmp   .Lx1494_2
.Lx1494_7:
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
                                                                                        jmp   .Lx1494_2
.Lx1494_5:
                        add              rsp, 32
.Lx1494_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1494_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1021_var_α
.Lx1494_240:
                                                                                        jmp   n1019_assign_α
n1018_call_β:
                                                                                        jmp   n1021_var_α
.Lx1494_0:
                        .quad            .Lx1494_0_s
.Lx1494_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1019_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1020_statement_α
n1019_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1021_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_statement_α:
                        add              rsp, 80
                                                                                        jmp   n1021_var_α
n1020_statement_β:
                        add              rsp, 80
                                                                                        jmp   n1021_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1022_lit_integer_α
n1021_var_β:
                        add              rsp, 16
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1023_binop_α
n1022_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1026_var_α
.Lx1499_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1023_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1500_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1026_var_α
.Lx1500_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1024_assign_α
n1023_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1025_statement_α
n1024_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1025_statement_α:
                        add              rsp, 48
                                                                                        jmp   n1026_var_α
n1025_statement_β:
                        add              rsp, 48
                                                                                        jmp   n1026_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1027_var_α
n1026_var_β:
                        add              rsp, 16
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1028_subscript_α
n1027_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1506_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1038_lit_string_α
.Lx1506_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1029_var_α
n1028_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1030_var_α
n1029_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1030_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1031_subscript_α
n1030_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1509_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1038_lit_string_α
.Lx1509_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1032_deref_α
n1031_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1510_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1038_lit_string_α
.Lx1510_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1033_call_α
n1032_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1512_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1512_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1512_6]
                        lea              rdx, [rip + .Lx1512_7]
                                                                                        jmp   rax
.Lx1512_6:
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
                                                                                        jmp   .Lx1512_2
.Lx1512_7:
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
                                                                                        jmp   .Lx1512_2
.Lx1512_5:
                        add              rsp, 32
.Lx1512_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1512_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1038_lit_string_α
.Lx1512_240:
                                                                                        jmp   n1034_var_α
n1033_call_β:
                                                                                        jmp   n1038_lit_string_α
.Lx1512_0:
                        .quad            .Lx1512_0_s
.Lx1512_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1034_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1035_binop_α
n1034_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1035_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1514_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1038_lit_string_α
.Lx1514_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1036_assign_var_α
n1035_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1515_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1038_lit_string_α
.Lx1515_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1037_statement_α
n1036_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_statement_α:
                        add              rsp, 176
                                                                                        jmp   n1038_lit_string_α
n1037_statement_β:
                        add              rsp, 176
                                                                                        jmp   n1038_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1038_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1039_call_α
n1038_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1518_0:
                        .quad            .Lx1518_0_s
.Lx1518_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1039_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1520:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1520]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1519_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1519_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1040_assign_α
n1039_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n1041_statement_α
n1040_assign_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_statement_α:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
n1041_statement_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_goto_α:
                                                                                        jmp   n773_statement_α
n1042_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1043_goto_α:
                                                                                        jmp   n1044_var_α
n1043_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1044_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1045_var_α
n1044_var_β:
                        add              rsp, 16
                                                                                        jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1046_subscript_α
n1045_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1528_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1051_var_α
.Lx1528_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1047_deref_α
n1046_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1529_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1051_var_α
.Lx1529_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1048_call_α
n1047_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1048_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1531_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1531_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1531_6]
                        lea              rdx, [rip + .Lx1531_7]
                                                                                        jmp   rax
.Lx1531_6:
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
                                                                                        jmp   .Lx1531_2
.Lx1531_7:
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
                                                                                        jmp   .Lx1531_2
.Lx1531_5:
                        add              rsp, 32
.Lx1531_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1531_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1051_var_α
.Lx1531_240:
                                                                                        jmp   n1049_assign_α
n1048_call_β:
                                                                                        jmp   n1051_var_α
.Lx1531_0:
                        .quad            .Lx1531_0_s
.Lx1531_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1049_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1050_statement_α
n1049_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1050_statement_α:
                        add              rsp, 80
                                                                                        jmp   n1051_var_α
n1050_statement_β:
                        add              rsp, 80
                                                                                        jmp   n1051_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1052_lit_integer_α
n1051_var_β:
                        add              rsp, 16
                                                                                        jmp   n1056_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1536_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1053_binop_α
n1052_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1056_var_α
.Lx1536_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1053_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1537_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1056_var_α
.Lx1537_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1054_assign_α
n1053_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1056_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1055_statement_α
n1054_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1056_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_statement_α:
                        add              rsp, 48
                                                                                        jmp   n1056_var_α
n1055_statement_β:
                        add              rsp, 48
                                                                                        jmp   n1056_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n1056_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1057_var_α
n1056_var_β:
                        add              rsp, 16
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1058_subscript_α
n1057_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1543_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1068_lit_string_α
.Lx1543_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1059_var_α
n1058_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1060_var_α
n1059_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1061_subscript_α
n1060_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1546_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1068_lit_string_α
.Lx1546_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1062_deref_α
n1061_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1547_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1068_lit_string_α
.Lx1547_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1063_call_α
n1062_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1068_lit_string_α
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
                        mov              rdi, qword ptr [rip + .Lx1549_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1549_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1549_6]
                        lea              rdx, [rip + .Lx1549_7]
                                                                                        jmp   rax
.Lx1549_6:
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
                                                                                        jmp   .Lx1549_2
.Lx1549_7:
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
                                                                                        jmp   .Lx1549_2
.Lx1549_5:
                        add              rsp, 32
.Lx1549_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1549_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1068_lit_string_α
.Lx1549_240:
                                                                                        jmp   n1064_var_α
n1063_call_β:
                                                                                        jmp   n1068_lit_string_α
.Lx1549_0:
                        .quad            .Lx1549_0_s
.Lx1549_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1065_binop_α
n1064_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1551_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1068_lit_string_α
.Lx1551_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1066_assign_var_α
n1065_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1552_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1068_lit_string_α
.Lx1552_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1067_statement_α
n1066_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_statement_α:
                        add              rsp, 176
                                                                                        jmp   n1068_lit_string_α
n1067_statement_β:
                        add              rsp, 176
                                                                                        jmp   n1068_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1068_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1555_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1069_call_α
n1068_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1555_0:
                        .quad            .Lx1555_0_s
.Lx1555_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1557:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1557]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1556_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1556_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1070_assign_α
n1069_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1070_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n1071_statement_α
n1070_assign_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1071_statement_α:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
n1071_statement_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1072_goto_α:
                                                                                        jmp   n775_statement_α
n1072_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1073_goto_α:
                                                                                        jmp   n1074_var_α
n1073_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1074_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1075_var_α
n1074_var_β:
                        add              rsp, 16
                                                                                        jmp   n1081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1075_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1076_subscript_α
n1075_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1076_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1565_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1081_var_α
.Lx1565_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1077_deref_α
n1076_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1566_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1081_var_α
.Lx1566_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1078_call_α
n1077_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1078_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1568_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1568_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1568_6]
                        lea              rdx, [rip + .Lx1568_7]
                                                                                        jmp   rax
.Lx1568_6:
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
                                                                                        jmp   .Lx1568_2
.Lx1568_7:
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
                                                                                        jmp   .Lx1568_2
.Lx1568_5:
                        add              rsp, 32
.Lx1568_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1568_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1081_var_α
.Lx1568_240:
                                                                                        jmp   n1079_assign_α
n1078_call_β:
                                                                                        jmp   n1081_var_α
.Lx1568_0:
                        .quad            .Lx1568_0_s
.Lx1568_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1079_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1080_statement_α
n1079_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1080_statement_α:
                        add              rsp, 80
                                                                                        jmp   n1081_var_α
n1080_statement_β:
                        add              rsp, 80
                                                                                        jmp   n1081_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1081_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1082_lit_integer_α
n1081_var_β:
                        add              rsp, 16
                                                                                        jmp   n1086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1082_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1573_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1083_binop_α
n1082_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1086_var_α
.Lx1573_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1083_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1574_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1086_var_α
.Lx1574_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1084_assign_α
n1083_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1084_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1085_statement_α
n1084_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1085_statement_α:
                        add              rsp, 48
                                                                                        jmp   n1086_var_α
n1085_statement_β:
                        add              rsp, 48
                                                                                        jmp   n1086_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n1086_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1087_var_α
n1086_var_β:
                        add              rsp, 16
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1087_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1088_subscript_α
n1087_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1088_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1580_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1098_lit_string_α
.Lx1580_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1089_var_α
n1088_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1089_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1090_var_α
n1089_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1090_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1091_subscript_α
n1090_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1091_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1583_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1098_lit_string_α
.Lx1583_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1092_deref_α
n1091_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1092_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1584_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1098_lit_string_α
.Lx1584_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1093_call_α
n1092_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1093_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1586_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1586_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1586_6]
                        lea              rdx, [rip + .Lx1586_7]
                                                                                        jmp   rax
.Lx1586_6:
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
                                                                                        jmp   .Lx1586_2
.Lx1586_7:
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
                                                                                        jmp   .Lx1586_2
.Lx1586_5:
                        add              rsp, 32
.Lx1586_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1586_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1098_lit_string_α
.Lx1586_240:
                                                                                        jmp   n1094_var_α
n1093_call_β:
                                                                                        jmp   n1098_lit_string_α
.Lx1586_0:
                        .quad            .Lx1586_0_s
.Lx1586_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1094_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1095_binop_α
n1094_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1095_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1588_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1098_lit_string_α
.Lx1588_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1096_assign_var_α
n1095_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1096_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1589_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1098_lit_string_α
.Lx1589_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1097_statement_α
n1096_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1097_statement_α:
                        add              rsp, 176
                                                                                        jmp   n1098_lit_string_α
n1097_statement_β:
                        add              rsp, 176
                                                                                        jmp   n1098_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1098_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1592_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1099_call_α
n1098_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1592_0:
                        .quad            .Lx1592_0_s
.Lx1592_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1099_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1594:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1594]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1593_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1593_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1100_assign_α
n1099_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1100_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n1101_statement_α
n1100_assign_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1101_statement_α:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
n1101_statement_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1102_goto_α:
                                                                                        jmp   n777_statement_α
n1102_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1103_goto_α:
                                                                                        jmp   n1104_var_α
n1103_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1104_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1105_var_α
n1104_var_β:
                        add              rsp, 16
                                                                                        jmp   n1111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1105_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1106_subscript_α
n1105_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1106_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1602_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1111_var_α
.Lx1602_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1107_deref_α
n1106_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1107_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1603_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1111_var_α
.Lx1603_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1108_call_α
n1107_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1108_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1605_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1605_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1605_6]
                        lea              rdx, [rip + .Lx1605_7]
                                                                                        jmp   rax
.Lx1605_6:
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
                                                                                        jmp   .Lx1605_2
.Lx1605_7:
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
                                                                                        jmp   .Lx1605_2
.Lx1605_5:
                        add              rsp, 32
.Lx1605_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1605_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1111_var_α
.Lx1605_240:
                                                                                        jmp   n1109_assign_α
n1108_call_β:
                                                                                        jmp   n1111_var_α
.Lx1605_0:
                        .quad            .Lx1605_0_s
.Lx1605_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1109_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1110_statement_α
n1109_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1110_statement_α:
                        add              rsp, 80
                                                                                        jmp   n1111_var_α
n1110_statement_β:
                        add              rsp, 80
                                                                                        jmp   n1111_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1111_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1112_lit_integer_α
n1111_var_β:
                        add              rsp, 16
                                                                                        jmp   n1116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1112_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1610_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1113_binop_α
n1112_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1116_var_α
.Lx1610_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1113_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1611_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1116_var_α
.Lx1611_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1114_assign_α
n1113_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1114_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1115_statement_α
n1114_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_statement_α:
                        add              rsp, 48
                                                                                        jmp   n1116_var_α
n1115_statement_β:
                        add              rsp, 48
                                                                                        jmp   n1116_var_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n1116_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1117_var_α
n1116_var_β:
                        add              rsp, 16
                                                                                        jmp   n1127_var_α
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
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1118_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1617_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1127_var_α
.Lx1617_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1119_deref_α
n1118_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1119_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1618_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1127_var_α
.Lx1618_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1120_lit_string_α
n1119_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1619_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1121_call_α
n1120_lit_string_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1127_var_α
.Lx1619_0:
                        .quad            .Lx1619_0_s
.Lx1619_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n1121_call_α:
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
.Lrkfnzd1621:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1621]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1620_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1127_var_α
.Lx1620_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1122_statement_α
n1121_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1122_statement_α:
                        add              rsp, 96
                                                                                        jmp   n1123_var_α
n1122_statement_β:
                        add              rsp, 96
                                                                                        jmp   n1127_var_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n1123_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1124_unop_α
n1123_var_β:
                        add              rsp, 16
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1124_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1125_assign_α
n1124_unop_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1125_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1126_statement_α
n1125_assign_β:
                        add              rsp, 32
                                                                                        jmp   n1127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1126_statement_α:
                        add              rsp, 32
                                                                                        jmp   n1127_var_α
n1126_statement_β:
                        add              rsp, 32
                                                                                        jmp   n1127_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n1127_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1128_var_α
n1127_var_β:
                        add              rsp, 16
                                                                                        jmp   n1133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1129_subscript_α
n1128_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1129_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1631_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1133_lit_string_α
.Lx1631_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1130_var_α
n1129_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1131_assign_var_α
n1130_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1131_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1633_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1133_lit_string_α
.Lx1633_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1132_statement_α
n1131_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1132_statement_α:
                        add              rsp, 80
                                                                                        jmp   n1133_lit_string_α
n1132_statement_β:
                        add              rsp, 80
                                                                                        jmp   n1133_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1133_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1636_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1134_call_α
n1133_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1636_0:
                        .quad            .Lx1636_0_s
.Lx1636_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1134_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1638:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1638]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1637_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
.Lx1637_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1135_assign_α
n1134_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # SGN
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n1136_statement_α
n1135_assign_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1136_statement_α:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
n1136_statement_β:
                        add              rsp, 32
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_goto_α:
                                                                                        jmp   n1127_var_α
n1137_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1138_goto_α:
                                                                                        jmp   n779_statement_α
n1138_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1139_goto_α:
                                                                                        jmp   n851_var_α
n1139_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1140_goto_α:
                                                                                        jmp   n891_var_α
n1140_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1141_goto_α:
                                                                                        jmp   n916_call_α
n1141_goto_β:
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
.S2:                    .string          "I"
.S3:                    .string          "V"
.S4:                    .string          "F"
.S5:                    .string          "*SGN"
.S6:                    .string          "A"
.S7:                    .string          "*DIV"
.S8:                    .string          "*MUL"
.S9:                    .string          "T"
.S10:                   .string          "*SUB"
.S11:                   .string          "*ADD"
.S12:                   .string          "epsilon"
.S13:                   .string          "*EMIT"
.S14:                   .string          "eol"
.S15:                   .string          "C"
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
