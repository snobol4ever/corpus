                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_α:
proc_LBL__EMIT_α_body:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_subscript_α
.Lx19_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx20_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_integer_α
.Lx20_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx21_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n7_lit_integer_α
.Lx21_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_call_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx23_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx23_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx23_6]
                        lea              rdx, [rip + .Lx23_7]
                                                                                        jmp   rax
.Lx23_6:
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
                                                                                        jmp   .Lx23_2
.Lx23_7:
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
                                                                                        jmp   .Lx23_2
.Lx23_5:
                        add              rsp, 32
.Lx23_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx23_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_integer_α
.Lx23_240:
                                                                                        jmp   n5_assign_α
n4_call_β:
                                                                                        jmp   n7_lit_integer_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx24_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n6_statement_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_α:
                        add              rsp, 80
                                                                                        jmp   n7_lit_integer_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx27_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n9_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_call_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd33:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd33]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
.Lx32_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_assign_α
n11_call_β:
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n13_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_α:
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_call_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd39:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd39]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx38_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n17_save_restore_α
.Lx38_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_save_restore_α
n15_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n17_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n16_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n17_save_restore_α:
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
proc_LBL__PSH_α:
proc_LBL__PSH_α_body:
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_binop_α
.Lx59_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx60_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n49_var_α
.Lx60_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n48_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_α:
                        add              rsp, 48
                                                                                        jmp   n49_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx66_240
                        add              rsp, 16
                                                                                        jmp   n54_lit_string_α
.Lx66_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n53_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_α:
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_call_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd72:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd72]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx71_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n57_save_restore_α
.Lx71_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_save_restore_α
n55_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n57_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n56_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n57_save_restore_α:
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
proc_LBL__DRF_α:
proc_LBL__DRF_α_body:
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_match_begin_α
n77_var_β:
                        add              rsp, 16
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_match_begin_α:
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
.Lx99_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n79_match_sequence_α
n78_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx99_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx99_1
                                                                                        jmp   .Lx99_0
.Lx99_1:
                        mov              r10, qword ptr [1879048192]
.Lx99_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx99_2
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
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_match_sequence_α:
                                                                                        jmp   n91_lit_integer_α
n79_match_sequence_as:
                                                                                        jmp   n80_match_end_α
n79_match_sequence_β:
                                                                                        jmp   n89_match_rpos_β
n79_match_sequence_af:
                                                                                        jmp   n78_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n80_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx103_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_9
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
.Lx103_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx103_1:
                        test             rax, rax
                                                                                        je    .Lx103_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx103_3]
                        lea              rdx, [rip + .Lx103_4]
                                                                                        jmp   rax
.Lx103_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx103_1
.Lx103_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx103_1
.Lx103_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx103_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 368]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 376]                     # outer_δ
                        mov              r15, qword ptr [rbp + 384]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 392]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n81_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_α:
                        mov              rbp, qword ptr [rbp + 360]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n82_var_α
n81_statement_β:
                        mov              rbp, qword ptr [rbp + 360]
                        add              rsp, 464
                                                                                        jmp   n93_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_var_α
n82_var_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_subscript_α
n83_var_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx108_240
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
.Lx108_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_deref_α
n84_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n85_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
.Lx109_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_assign_α
n85_deref_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n87_statement_α
n86_assign_β:
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_α:
                                                                                        jmp   n96_save_restore_α
n87_statement_β:
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n89_match_rpos_α
n88_lit_integer_β:
                                                                                        jmp   n90_match_any_β
.Lx113_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n89_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n90_match_any_β
                                                                                        jmp   n80_match_end_α
n89_match_rpos_β:
                                                                                        jmp   n90_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n90_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n78_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n78_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n88_lit_integer_α
n90_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n78_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n92_match_pos_α
n91_lit_integer_β:
                                                                                        jmp   n78_match_begin_β
.Lx117_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n92_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n78_match_begin_β
                                                                                        jmp   n90_match_any_α
n92_match_pos_β:
                                                                                        jmp   n78_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_assign_α
n93_var_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n95_statement_α
n94_assign_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_α:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
n95_statement_β:
                        add              rsp, 16
                                                                                        jmp   n96_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n96_save_restore_α:
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
proc_LBL__ADD_α:
proc_LBL__ADD_α_body:
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n127_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx159_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n132_var_α
.Lx159_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx160_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n132_var_α
.Lx160_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_call_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx162_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx162_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx162_6]
                        lea              rdx, [rip + .Lx162_7]
                                                                                        jmp   rax
.Lx162_6:
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
                                                                                        jmp   .Lx162_2
.Lx162_7:
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
                                                                                        jmp   .Lx162_2
.Lx162_5:
                        add              rsp, 32
.Lx162_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx162_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n132_var_α
.Lx162_240:
                                                                                        jmp   n130_assign_α
n129_call_β:
                                                                                        jmp   n132_var_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n131_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_α:
                        add              rsp, 80
                                                                                        jmp   n132_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n134_binop_α
.Lx167_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n137_var_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n135_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n136_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_α:
                        add              rsp, 48
                                                                                        jmp   n137_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n139_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx174_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n149_lit_string_α
.Lx174_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_var_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n142_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx177_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n149_lit_string_α
.Lx177_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n143_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n149_lit_string_α
.Lx178_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_call_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx180_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx180_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx180_6]
                        lea              rdx, [rip + .Lx180_7]
                                                                                        jmp   rax
.Lx180_6:
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
                                                                                        jmp   .Lx180_2
.Lx180_7:
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
                                                                                        jmp   .Lx180_2
.Lx180_5:
                        add              rsp, 32
.Lx180_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx180_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n149_lit_string_α
.Lx180_240:
                                                                                        jmp   n145_var_α
n144_call_β:
                                                                                        jmp   n149_lit_string_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n146_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx182_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n149_lit_string_α
.Lx182_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n147_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx183_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n149_lit_string_α
.Lx183_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_α:
                        add              rsp, 176
                                                                                        jmp   n149_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_call_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd188:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd188]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx187_240
                        add              rsp, 16
                                                                                        jmp   n153_lit_string_α
.Lx187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_assign_α
n150_call_β:
                        add              rsp, 16
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n152_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_α:
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_call_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd194:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd194]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n156_save_restore_α
.Lx193_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n155_save_restore_α
n154_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n156_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n155_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n156_save_restore_α:
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
proc_LBL__SUB_α:
proc_LBL__SUB_α_body:
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n200_var_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n201_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n201_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx233_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n206_var_α
.Lx233_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n202_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx234_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n206_var_α
.Lx234_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n203_call_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx236_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx236_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx236_6]
                        lea              rdx, [rip + .Lx236_7]
                                                                                        jmp   rax
.Lx236_6:
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
                                                                                        jmp   .Lx236_2
.Lx236_7:
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
                                                                                        jmp   .Lx236_2
.Lx236_5:
                        add              rsp, 32
.Lx236_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx236_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n206_var_α
.Lx236_240:
                                                                                        jmp   n204_assign_α
n203_call_β:
                                                                                        jmp   n206_var_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n205_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_α:
                        add              rsp, 80
                                                                                        jmp   n206_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n207_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n208_binop_α
.Lx241_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n208_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx242_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n211_var_α
.Lx242_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n209_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n210_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_α:
                        add              rsp, 48
                                                                                        jmp   n211_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n212_var_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n213_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n213_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx248_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n223_lit_string_α
.Lx248_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n215_var_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n216_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n216_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx251_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n223_lit_string_α
.Lx251_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n217_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n217_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx252_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n223_lit_string_α
.Lx252_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n218_call_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx254_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx254_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx254_6]
                        lea              rdx, [rip + .Lx254_7]
                                                                                        jmp   rax
.Lx254_6:
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
                                                                                        jmp   .Lx254_2
.Lx254_7:
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
                                                                                        jmp   .Lx254_2
.Lx254_5:
                        add              rsp, 32
.Lx254_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx254_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n223_lit_string_α
.Lx254_240:
                                                                                        jmp   n219_var_α
n218_call_β:
                                                                                        jmp   n223_lit_string_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n220_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx256_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n223_lit_string_α
.Lx256_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n221_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx257_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n223_lit_string_α
.Lx257_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n222_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_α:
                        add              rsp, 176
                                                                                        jmp   n223_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n224_call_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd262:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd262]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx261_240
                        add              rsp, 16
                                                                                        jmp   n227_lit_string_α
.Lx261_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n225_assign_α
n224_call_β:
                        add              rsp, 16
                                                                                        jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n226_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_α:
                                                                                        jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n228_call_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd268:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd268]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx267_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n230_save_restore_α
.Lx267_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n229_save_restore_α
n228_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n230_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n229_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n230_save_restore_α:
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
proc_LBL__MUL_α:
proc_LBL__MUL_α_body:
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n275_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx307_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n280_var_α
.Lx307_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n276_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n276_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx308_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n280_var_α
.Lx308_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n277_call_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx310_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx310_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx310_6]
                        lea              rdx, [rip + .Lx310_7]
                                                                                        jmp   rax
.Lx310_6:
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
                                                                                        jmp   .Lx310_2
.Lx310_7:
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
                                                                                        jmp   .Lx310_2
.Lx310_5:
                        add              rsp, 32
.Lx310_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx310_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n280_var_α
.Lx310_240:
                                                                                        jmp   n278_assign_α
n277_call_β:
                                                                                        jmp   n280_var_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n279_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_α:
                        add              rsp, 80
                                                                                        jmp   n280_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n281_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n282_binop_α
.Lx315_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n282_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx316_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n285_var_α
.Lx316_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n283_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n284_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_α:
                        add              rsp, 48
                                                                                        jmp   n285_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n287_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n287_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx322_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n297_lit_string_α
.Lx322_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n290_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n290_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx325_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n297_lit_string_α
.Lx325_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n291_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx326_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n297_lit_string_α
.Lx326_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n292_call_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx328_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx328_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx328_6]
                        lea              rdx, [rip + .Lx328_7]
                                                                                        jmp   rax
.Lx328_6:
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
                                                                                        jmp   .Lx328_2
.Lx328_7:
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
                                                                                        jmp   .Lx328_2
.Lx328_5:
                        add              rsp, 32
.Lx328_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx328_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n297_lit_string_α
.Lx328_240:
                                                                                        jmp   n293_var_α
n292_call_β:
                                                                                        jmp   n297_lit_string_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n294_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n294_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n297_lit_string_α
.Lx330_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n295_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx331_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n297_lit_string_α
.Lx331_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n296_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_α:
                        add              rsp, 176
                                                                                        jmp   n297_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n298_call_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd336:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd336]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx335_240
                        add              rsp, 16
                                                                                        jmp   n301_lit_string_α
.Lx335_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n299_assign_α
n298_call_β:
                        add              rsp, 16
                                                                                        jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n300_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_α:
                                                                                        jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n302_call_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd342:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd342]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx341_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n304_save_restore_α
.Lx341_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n303_save_restore_α
n302_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n304_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n303_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n304_save_restore_α:
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
proc_LBL__DIV_α:
proc_LBL__DIV_α_body:
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n348_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n349_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n349_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx381_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n354_var_α
.Lx381_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n350_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx382_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n354_var_α
.Lx382_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n351_call_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx384_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx384_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx384_6]
                        lea              rdx, [rip + .Lx384_7]
                                                                                        jmp   rax
.Lx384_6:
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
                                                                                        jmp   .Lx384_2
.Lx384_7:
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
                                                                                        jmp   .Lx384_2
.Lx384_5:
                        add              rsp, 32
.Lx384_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx384_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n354_var_α
.Lx384_240:
                                                                                        jmp   n352_assign_α
n351_call_β:
                                                                                        jmp   n354_var_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n353_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_α:
                        add              rsp, 80
                                                                                        jmp   n354_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n355_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n356_binop_α
.Lx389_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n356_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx390_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n359_var_α
.Lx390_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n357_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n358_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_α:
                        add              rsp, 48
                                                                                        jmp   n359_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n361_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n361_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx396_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n371_lit_string_α
.Lx396_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n363_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n364_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n364_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx399_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n371_lit_string_α
.Lx399_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n365_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n365_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx400_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n371_lit_string_α
.Lx400_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n366_call_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx402_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx402_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx402_6]
                        lea              rdx, [rip + .Lx402_7]
                                                                                        jmp   rax
.Lx402_6:
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
                                                                                        jmp   .Lx402_2
.Lx402_7:
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
                                                                                        jmp   .Lx402_2
.Lx402_5:
                        add              rsp, 32
.Lx402_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx402_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n371_lit_string_α
.Lx402_240:
                                                                                        jmp   n367_var_α
n366_call_β:
                                                                                        jmp   n371_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n368_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n368_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx404_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n371_lit_string_α
.Lx404_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n369_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx405_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n371_lit_string_α
.Lx405_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n370_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_α:
                        add              rsp, 176
                                                                                        jmp   n371_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n372_call_α
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd410:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd410]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx409_240
                        add              rsp, 16
                                                                                        jmp   n375_lit_string_α
.Lx409_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n373_assign_α
n372_call_β:
                        add              rsp, 16
                                                                                        jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n374_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_α:
                                                                                        jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n376_call_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd416:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd416]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx415_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n378_save_restore_α
.Lx415_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n377_save_restore_α
n376_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n378_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n377_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n378_save_restore_α:
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
proc_LBL__NEG_α:
proc_LBL__NEG_α_body:
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n423_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n423_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx442_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n432_lit_string_α
.Lx442_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n424_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n426_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n426_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx445_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n432_lit_string_α
.Lx445_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n427_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx446_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n432_lit_string_α
.Lx446_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n428_call_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx448_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx448_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_6]
                        lea              rdx, [rip + .Lx448_7]
                                                                                        jmp   rax
.Lx448_6:
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
                                                                                        jmp   .Lx448_2
.Lx448_7:
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
                                                                                        jmp   .Lx448_2
.Lx448_5:
                        add              rsp, 32
.Lx448_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx448_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n432_lit_string_α
.Lx448_240:
                                                                                        jmp   n429_unop_α
n428_call_β:
                                                                                        jmp   n432_lit_string_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n429_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n430_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx450_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n432_lit_string_α
.Lx450_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n431_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_α:
                        add              rsp, 160
                                                                                        jmp   n432_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n433_call_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
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
.Lrkfnzd455:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd455]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx454_240
                        add              rsp, 16
                                                                                        jmp   n436_lit_string_α
.Lx454_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n434_assign_α
n433_call_β:
                        add              rsp, 16
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n434_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # NEG
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n435_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_α:
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n437_call_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
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
.Lrkfnzd461:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd461]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx460_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n439_save_restore_α
.Lx460_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n438_save_restore_α
n437_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n439_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n438_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n439_save_restore_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n466_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n467_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n467_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx471_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx471_1
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "EMIT"
.Lx471_1:
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
n472_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n473_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n473_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx477_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx477_1
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "PSH"
.Lx477_1:
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
n478_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n479_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n479_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx483_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx483_1
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "DRF"
.Lx483_1:
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
n484_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n485_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n485_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx489_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx489_1
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "ADD"
.Lx489_1:
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
n490_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n491_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n491_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx495_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx495_1
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "SUB"
.Lx495_1:
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
n496_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n497_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n497_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx501_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx501_1
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "MUL"
.Lx501_1:
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
n502_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n503_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n503_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx507_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx507_1
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "DIV"
.Lx507_1:
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
n508_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n509_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n509_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx513_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx513_1
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "NEG"
.Lx513_1:
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
                        lea              rax, [rip + n516_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n514_match_assign_save_α:
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
                                                                                        jmp   n515_match_any_α
n514_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n515_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx520_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx520_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx520_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx520_240:
                        add              r14d, 1
                                                                                        jmp   n516_match_assign_cond_α
n515_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n516_match_assign_cond_α:
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
n516_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n515_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx523_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx523_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx524_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx524_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx524_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx524_0:
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
                        lea              rax, [rip + n527_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n525_match_assign_save_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n526_match_span_α
n525_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n526_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx531_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx531_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx531_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx531_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx531_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx531_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx531_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx531_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx531_1
                        add              ecx, 1
                                                                                        jmp   .Lx531_0
.Lx531_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx531_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx531_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n527_match_assign_cond_α
n526_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n527_match_assign_cond_α:
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
n527_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n526_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx534_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx534_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx535_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx535_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx535_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx535_0:
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
                        lea              rax, [rip + n536_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n536_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx544_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n542_match_patref_α
.Lx544_21:
                        lea              rax, [rip + .Lx544_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n541_match_patref_α
.Lx544_22:
                        lea              rax, [rip + .Lx544_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n537_match_sequence_α
n536_match_alternate_s0:
                        lea              rax, [rip + .Lx544_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n536_match_alternate_as
n536_match_alternate_s1:
                        lea              rax, [rip + .Lx544_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n536_match_alternate_as
n536_match_alternate_s2:
                        lea              rax, [rip + .Lx544_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n536_match_alternate_as
.Lx544_40:
                                                                                        jmp   n542_match_patref_β
.Lx544_41:
                                                                                        jmp   n541_match_patref_β
.Lx544_42:
                                                                                        jmp   n537_match_sequence_β
n536_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n536_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n536_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx544_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n537_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n540_match_lit_α
n537_match_sequence_as:
                                                                                        jmp   n536_match_alternate_s2
n537_match_sequence_β:
                                                                                        jmp   n538_match_lit_β
n537_match_sequence_af:
                                                                                        jmp   n536_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n538_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n539_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n539_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n536_match_alternate_s2
n538_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n539_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n539_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx549_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx549_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx549_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx549_10
.Lx549_9:
                        xor              eax, eax
.Lx549_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx549_11:
                        test             rax, rax
                                                                                        jz    .Lx549_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx549_4]
                        lea              rdx, [rip + .Lx549_5]
                                                                                        jmp   rax
.Lx549_4:
                                                                                        jmp   n538_match_lit_α
.Lx549_5:
                                                                                        jmp   n540_match_lit_β
.Lx549_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx549_2:
                        test             rax, rax
                                                                                        je    .Lx549_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx549_7]
                        lea              rdx, [rip + .Lx549_8]
                                                                                        jmp   rax
.Lx549_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx549_2
.Lx549_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx549_2
.Lx549_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n540_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx549_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n538_match_lit_α
.Lx549_6:
                        add              rsp, 16
                                                                                        jmp   n540_match_lit_β
n539_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n540_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n536_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n536_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n539_match_defer_α
n540_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n536_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n541_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx552_11
                        mov              rax, qword ptr [1879052560]                    # I
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx552_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx552_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx552_10
.Lx552_9:
                        xor              eax, eax
.Lx552_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx552_11:
                        test             rax, rax
                                                                                        jz    .Lx552_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx552_4]
                        lea              rdx, [rip + .Lx552_5]
                                                                                        jmp   rax
.Lx552_4:
                                                                                        jmp   n536_match_alternate_s1
.Lx552_5:
                                                                                        jmp   n536_match_alternate_af
.Lx552_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx552_2:
                        test             rax, rax
                                                                                        je    .Lx552_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx552_7]
                        lea              rdx, [rip + .Lx552_8]
                                                                                        jmp   rax
.Lx552_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx552_2
.Lx552_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx552_2
.Lx552_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n536_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx552_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n536_match_alternate_s1
.Lx552_6:
                        add              rsp, 16
                                                                                        jmp   n536_match_alternate_af
n541_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n542_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_11
                        mov              rax, qword ptr [1879052544]                    # V
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 8
                                                                                        jne   .Lx553_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx553_10
.Lx553_9:
                        xor              eax, eax
.Lx553_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx553_11:
                        test             rax, rax
                                                                                        jz    .Lx553_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx553_4]
                        lea              rdx, [rip + .Lx553_5]
                                                                                        jmp   rax
.Lx553_4:
                                                                                        jmp   n536_match_alternate_s0
.Lx553_5:
                                                                                        jmp   n536_match_alternate_af
.Lx553_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx553_2:
                        test             rax, rax
                                                                                        je    .Lx553_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx553_7]
                        lea              rdx, [rip + .Lx553_8]
                                                                                        jmp   rax
.Lx553_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx553_2
.Lx553_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx553_2
.Lx553_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n536_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx553_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n536_match_alternate_s0
.Lx553_6:
                        add              rsp, 16
                                                                                        jmp   n536_match_alternate_af
n542_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx554_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx554_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx555_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx555_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx555_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx555_0:
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
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n556_match_alternate_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n556_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx567_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n565_match_patref_α
.Lx567_21:
                        lea              rax, [rip + .Lx567_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n562_match_sequence_α
.Lx567_22:
                        lea              rax, [rip + .Lx567_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n557_match_sequence_α
n556_match_alternate_s0:
                        lea              rax, [rip + .Lx567_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n556_match_alternate_as
n556_match_alternate_s1:
                        lea              rax, [rip + .Lx567_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n556_match_alternate_as
n556_match_alternate_s2:
                        lea              rax, [rip + .Lx567_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n556_match_alternate_as
.Lx567_40:
                                                                                        jmp   n565_match_patref_β
.Lx567_41:
                                                                                        jmp   n562_match_sequence_β
.Lx567_42:
                                                                                        jmp   n557_match_sequence_β
n556_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n556_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n556_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx567_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n561_match_lit_α
n557_match_sequence_as:
                                                                                        jmp   n556_match_alternate_s2
n557_match_sequence_β:
                                                                                        jmp   n560_match_assign_cond_β
n557_match_sequence_af:
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n558_match_assign_save_α:
                        lea              rdi, [rbp + 160]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n559_match_defer_α
n558_match_assign_save_β:
                        lea              rdi, [rbp + 160]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n561_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n559_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx572_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx572_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx572_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx572_10
.Lx572_9:
                        xor              eax, eax
.Lx572_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx572_11:
                        test             rax, rax
                                                                                        jz    .Lx572_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx572_4]
                        lea              rdx, [rip + .Lx572_5]
                                                                                        jmp   rax
.Lx572_4:
                                                                                        jmp   n560_match_assign_cond_α
.Lx572_5:
                                                                                        jmp   n558_match_assign_save_β
.Lx572_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx572_2:
                        test             rax, rax
                                                                                        je    .Lx572_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx572_7]
                        lea              rdx, [rip + .Lx572_8]
                                                                                        jmp   rax
.Lx572_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx572_2
.Lx572_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx572_2
.Lx572_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n558_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx572_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n560_match_assign_cond_α
.Lx572_6:
                        add              rsp, 16
                                                                                        jmp   n558_match_assign_save_β
n559_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n560_match_assign_cond_α:
                        lea              rdi, [rbp + 160]                               # slot
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
                                                                                        jmp   n556_match_alternate_s2
n560_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n559_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n561_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n556_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n556_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n558_match_assign_save_α
n561_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n562_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n564_match_lit_α
n562_match_sequence_as:
                                                                                        jmp   n556_match_alternate_s1
n562_match_sequence_β:
                                                                                        jmp   n563_match_defer_β
n562_match_sequence_af:
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n563_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx579_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx579_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx579_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx579_10
.Lx579_9:
                        xor              eax, eax
.Lx579_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx579_11:
                        test             rax, rax
                                                                                        jz    .Lx579_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx579_4]
                        lea              rdx, [rip + .Lx579_5]
                                                                                        jmp   rax
.Lx579_4:
                                                                                        jmp   n556_match_alternate_s1
.Lx579_5:
                                                                                        jmp   n564_match_lit_β
.Lx579_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx579_2:
                        test             rax, rax
                                                                                        je    .Lx579_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx579_7]
                        lea              rdx, [rip + .Lx579_8]
                                                                                        jmp   rax
.Lx579_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx579_2
.Lx579_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx579_2
.Lx579_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n564_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx579_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n556_match_alternate_s1
.Lx579_6:
                        add              rsp, 16
                                                                                        jmp   n564_match_lit_β
n563_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n564_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n556_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n556_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n563_match_defer_α
n564_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n565_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx582_11
                        mov              rax, qword ptr [1879052576]                    # A
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx582_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx582_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx582_10
.Lx582_9:
                        xor              eax, eax
.Lx582_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx582_11:
                        test             rax, rax
                                                                                        jz    .Lx582_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx582_4]
                        lea              rdx, [rip + .Lx582_5]
                                                                                        jmp   rax
.Lx582_4:
                                                                                        jmp   n556_match_alternate_s0
.Lx582_5:
                                                                                        jmp   n556_match_alternate_af
.Lx582_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx582_2:
                        test             rax, rax
                                                                                        je    .Lx582_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx582_7]
                        lea              rdx, [rip + .Lx582_8]
                                                                                        jmp   rax
.Lx582_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx582_2
.Lx582_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx582_2
.Lx582_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n556_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx582_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n556_match_alternate_s0
.Lx582_6:
                        add              rsp, 16
                                                                                        jmp   n556_match_alternate_af
n565_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx583_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx583_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx584_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx584_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx584_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx584_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n585_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n585_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n598_match_patref_α
n585_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n585_match_sequence_β:
                                                                                        jmp   n586_match_alternate_β
n585_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n586_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx602_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n593_match_sequence_α
.Lx602_21:
                        lea              rax, [rip + .Lx602_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n588_match_sequence_α
.Lx602_22:
                        lea              rax, [rip + .Lx602_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n587_match_lit_α
n586_match_alternate_s0:
                        lea              rax, [rip + .Lx602_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n586_match_alternate_as
n586_match_alternate_s1:
                        lea              rax, [rip + .Lx602_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n586_match_alternate_as
n586_match_alternate_s2:
                        lea              rax, [rip + .Lx602_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n586_match_alternate_as
.Lx602_40:
                                                                                        jmp   n593_match_sequence_β
.Lx602_41:
                                                                                        jmp   n588_match_sequence_β
.Lx602_42:
                                                                                        jmp   n587_match_lit_β
n586_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n586_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n586_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx602_19:
                                                                                        jmp   n598_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n587_match_lit_α:
                                                                                        jmp   n586_match_alternate_s2
n587_match_lit_β:
                                                                                        jmp   n586_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n588_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n592_match_lit_α
n588_match_sequence_as:
                                                                                        jmp   n586_match_alternate_s1
n588_match_sequence_β:
                                                                                        jmp   n591_match_assign_cond_β
n588_match_sequence_af:
                                                                                        jmp   n586_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n589_match_assign_save_α:
                        lea              rdi, [rbp + 224]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n590_match_defer_α
n589_match_assign_save_β:
                        lea              rdi, [rbp + 224]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n592_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n590_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx609_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
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
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx609_11:
                        test             rax, rax
                                                                                        jz    .Lx609_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx609_4]
                        lea              rdx, [rip + .Lx609_5]
                                                                                        jmp   rax
.Lx609_4:
                                                                                        jmp   n591_match_assign_cond_α
.Lx609_5:
                                                                                        jmp   n589_match_assign_save_β
.Lx609_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
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
                                                                                        js    n589_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx609_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n591_match_assign_cond_α
.Lx609_6:
                        add              rsp, 16
                                                                                        jmp   n589_match_assign_save_β
n590_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n591_match_assign_cond_α:
                        lea              rdi, [rbp + 224]                               # slot
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
                                                                                        jmp   n586_match_alternate_s1
n591_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n590_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n592_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n586_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n586_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n589_match_assign_save_α
n592_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n586_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n593_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n597_match_lit_α
n593_match_sequence_as:
                                                                                        jmp   n586_match_alternate_s0
n593_match_sequence_β:
                                                                                        jmp   n596_match_assign_cond_β
n593_match_sequence_af:
                                                                                        jmp   n586_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n594_match_assign_save_α:
                        lea              rdi, [rbp + 144]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n595_match_defer_α
n594_match_assign_save_β:
                        lea              rdi, [rbp + 144]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n597_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n595_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx618_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx618_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx618_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx618_10
.Lx618_9:
                        xor              eax, eax
.Lx618_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx618_11:
                        test             rax, rax
                                                                                        jz    .Lx618_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx618_4]
                        lea              rdx, [rip + .Lx618_5]
                                                                                        jmp   rax
.Lx618_4:
                                                                                        jmp   n596_match_assign_cond_α
.Lx618_5:
                                                                                        jmp   n594_match_assign_save_β
.Lx618_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx618_2:
                        test             rax, rax
                                                                                        je    .Lx618_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx618_7]
                        lea              rdx, [rip + .Lx618_8]
                                                                                        jmp   rax
.Lx618_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx618_2
.Lx618_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx618_2
.Lx618_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n594_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx618_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n596_match_assign_cond_α
.Lx618_6:
                        add              rsp, 16
                                                                                        jmp   n594_match_assign_save_β
n595_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n596_match_assign_cond_α:
                        lea              rdi, [rbp + 144]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S9]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n586_match_alternate_s0
n596_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n595_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n597_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n586_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n586_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n594_match_assign_save_α
n597_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n586_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n598_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx623_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
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
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx623_11:
                        test             rax, rax
                                                                                        jz    .Lx623_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx623_4]
                        lea              rdx, [rip + .Lx623_5]
                                                                                        jmp   rax
.Lx623_4:
                                                                                        jmp   n586_match_alternate_α
.Lx623_5:
                                                                                        jmp   proc_PAT$4_ω
.Lx623_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx623_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n586_match_alternate_α
.Lx623_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n598_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx624_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx624_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx625_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx625_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx625_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx625_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + n626_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n626_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n639_match_patref_α
n626_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n626_match_sequence_β:
                                                                                        jmp   n627_match_alternate_β
n626_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n627_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx643_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n634_match_sequence_α
.Lx643_21:
                        lea              rax, [rip + .Lx643_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n629_match_sequence_α
.Lx643_22:
                        lea              rax, [rip + .Lx643_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n628_match_lit_α
n627_match_alternate_s0:
                        lea              rax, [rip + .Lx643_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n627_match_alternate_as
n627_match_alternate_s1:
                        lea              rax, [rip + .Lx643_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n627_match_alternate_as
n627_match_alternate_s2:
                        lea              rax, [rip + .Lx643_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n627_match_alternate_as
.Lx643_40:
                                                                                        jmp   n634_match_sequence_β
.Lx643_41:
                                                                                        jmp   n629_match_sequence_β
.Lx643_42:
                                                                                        jmp   n628_match_lit_β
n627_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n627_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n627_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx643_19:
                                                                                        jmp   n639_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n628_match_lit_α:
                                                                                        jmp   n627_match_alternate_s2
n628_match_lit_β:
                                                                                        jmp   n627_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n629_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n633_match_lit_α
n629_match_sequence_as:
                                                                                        jmp   n627_match_alternate_s1
n629_match_sequence_β:
                                                                                        jmp   n632_match_assign_cond_β
n629_match_sequence_af:
                                                                                        jmp   n627_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n630_match_assign_save_α:
                        lea              rdi, [rbp + 224]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n631_match_defer_α
n630_match_assign_save_β:
                        lea              rdi, [rbp + 224]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n633_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n631_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx650_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx650_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx650_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx650_10
.Lx650_9:
                        xor              eax, eax
.Lx650_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx650_11:
                        test             rax, rax
                                                                                        jz    .Lx650_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx650_4]
                        lea              rdx, [rip + .Lx650_5]
                                                                                        jmp   rax
.Lx650_4:
                                                                                        jmp   n632_match_assign_cond_α
.Lx650_5:
                                                                                        jmp   n630_match_assign_save_β
.Lx650_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx650_2:
                        test             rax, rax
                                                                                        je    .Lx650_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx650_7]
                        lea              rdx, [rip + .Lx650_8]
                                                                                        jmp   rax
.Lx650_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx650_2
.Lx650_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx650_2
.Lx650_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n630_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx650_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n632_match_assign_cond_α
.Lx650_6:
                        add              rsp, 16
                                                                                        jmp   n630_match_assign_save_β
n631_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n632_match_assign_cond_α:
                        lea              rdi, [rbp + 224]                               # slot
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
                                                                                        jmp   n627_match_alternate_s1
n632_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n631_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n633_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n627_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n627_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n630_match_assign_save_α
n633_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n627_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n634_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n638_match_lit_α
n634_match_sequence_as:
                                                                                        jmp   n627_match_alternate_s0
n634_match_sequence_β:
                                                                                        jmp   n637_match_assign_cond_β
n634_match_sequence_af:
                                                                                        jmp   n627_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n635_match_assign_save_α:
                        lea              rdi, [rbp + 144]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n636_match_defer_α
n635_match_assign_save_β:
                        lea              rdi, [rbp + 144]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n638_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n636_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx659_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx659_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx659_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx659_10
.Lx659_9:
                        xor              eax, eax
.Lx659_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx659_11:
                        test             rax, rax
                                                                                        jz    .Lx659_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx659_4]
                        lea              rdx, [rip + .Lx659_5]
                                                                                        jmp   rax
.Lx659_4:
                                                                                        jmp   n637_match_assign_cond_α
.Lx659_5:
                                                                                        jmp   n635_match_assign_save_β
.Lx659_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx659_2:
                        test             rax, rax
                                                                                        je    .Lx659_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx659_7]
                        lea              rdx, [rip + .Lx659_8]
                                                                                        jmp   rax
.Lx659_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx659_2
.Lx659_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx659_2
.Lx659_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n635_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx659_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n637_match_assign_cond_α
.Lx659_6:
                        add              rsp, 16
                                                                                        jmp   n635_match_assign_save_β
n636_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n637_match_assign_cond_α:
                        lea              rdi, [rbp + 144]                               # slot
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
                                                                                        jmp   n627_match_alternate_s0
n637_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n636_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n638_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n627_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n627_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n635_match_assign_save_α
n638_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n627_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n639_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx664_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
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
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx664_11:
                        test             rax, rax
                                                                                        jz    .Lx664_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx664_4]
                        lea              rdx, [rip + .Lx664_5]
                                                                                        jmp   rax
.Lx664_4:
                                                                                        jmp   n627_match_alternate_α
.Lx664_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx664_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
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
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx664_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n627_match_alternate_α
.Lx664_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n639_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx665_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx665_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx666_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx666_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx666_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx666_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312]
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
n667_lit_integer_α:
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
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n668_call_α
.Lx671_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n668_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lbynamefn243:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn243]                     # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx672_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx672_240:
                                                                                        jmp   n669_match_value_α
n668_call_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n669_match_value_α:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx673_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx673_4]
                        lea              rdx, [rip + .Lx673_5]
                                                                                        jmp   rax
.Lx673_4:
                                                                                        jmp   n670_match_fence1_α
.Lx673_5:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx673_0:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx673_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx673_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx673_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n670_match_fence1_α
.Lx673_6:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
n669_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n670_match_fence1_α:
                        mov              rsp, rbp
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanhit
n670_match_fence1_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx676_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx676_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx677_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx677_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx677_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx677_0:
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
                        lea              rax, [rip + n678_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n678_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n688_lit_integer_α
n678_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n678_match_sequence_β:
                                                                                        jmp   n680_match_rpos_β
n678_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n680_match_rpos_α
n679_lit_integer_β:
                                                                                        jmp   n681_match_arbno_β
.Lx692_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n680_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n681_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n680_match_rpos_β:
                                                                                        jmp   n681_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n681_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n679_lit_integer_α
n681_match_arbno_β:
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
                                                                                        jmp   n682_match_sequence_α
n681_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n682_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n679_lit_integer_α
n681_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx695_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n682_match_sequence_β
.Lx695_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n689_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n682_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n687_match_patref_α
n682_match_sequence_as:
                                                                                        jmp   n681_match_arbno_as
n682_match_sequence_β:
                                                                                        jmp   n685_match_assign_cond_β
n682_match_sequence_af:
                                                                                        jmp   n681_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n683_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n684_match_patref_α
n683_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n686_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n684_match_patref_α:
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx700_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx700_4]
                        lea              rdx, [rip + .Lx700_5]
                                                                                        jmp   rax
.Lx700_4:
                                                                                        jmp   n685_match_assign_cond_α
.Lx700_5:
                                                                                        jmp   n683_match_assign_save_β
.Lx700_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx700_2:
                        test             rax, rax
                                                                                        je    .Lx700_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx700_7]
                        lea              rdx, [rip + .Lx700_8]
                                                                                        jmp   rax
.Lx700_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx700_2
.Lx700_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx700_2
.Lx700_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n683_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx700_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n685_match_assign_cond_α
.Lx700_6:
                        add              rsp, 16
                                                                                        jmp   n683_match_assign_save_β
n684_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n685_match_assign_cond_α:
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
                                                                                        jmp   n681_match_arbno_as
n685_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n684_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n686_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]                    # eol
                        mov              rdx, qword ptr [1879052648]
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n683_match_assign_save_α
.Lx703_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n687_match_patref_β
.Lx703_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
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
                                                                                        js    n687_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx703_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n683_match_assign_save_α
.Lx703_6:
                        add              rsp, 16
                                                                                        jmp   n687_match_patref_β
n686_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n687_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n687_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx704_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx704_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx704_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx704_10
.Lx704_9:
                        xor              eax, eax
.Lx704_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx704_11:
                        test             rax, rax
                                                                                        jz    .Lx704_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx704_4]
                        lea              rdx, [rip + .Lx704_5]
                                                                                        jmp   rax
.Lx704_4:
                                                                                        jmp   n686_match_patref_α
.Lx704_5:
                                                                                        jmp   n681_match_arbno_af
.Lx704_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx704_2:
                        test             rax, rax
                                                                                        je    .Lx704_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx704_7]
                        lea              rdx, [rip + .Lx704_8]
                                                                                        jmp   rax
.Lx704_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx704_2
.Lx704_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx704_2
.Lx704_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n681_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx704_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n686_match_patref_α
.Lx704_6:
                        add              rsp, 16
                                                                                        jmp   n681_match_arbno_af
n687_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n689_match_pos_α
n688_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx705_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n689_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n681_match_arbno_α
n689_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx707_0
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx707_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx708_0
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx708_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx708_0
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx708_0:
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 4592
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
                        mov              esi, 272
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
                        mov              esi, 272
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
n709_statement_α:
                                                                                        jmp   n710_statement_α
n709_statement_β:
                                                                                        jmp   n710_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n710_statement_α:
                                                                                        jmp   n711_statement_α
n710_statement_β:
                                                                                        jmp   n711_statement_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n711_statement_α:
                                                                                        jmp   n712_statement_α
n711_statement_β:
                                                                                        jmp   n712_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n712_statement_α:
                                                                                        jmp   n713_statement_α
n712_statement_β:
                                                                                        jmp   n713_statement_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n713_statement_α:
                                                                                        jmp   n714_statement_α
n713_statement_β:
                                                                                        jmp   n714_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n714_statement_α:
                                                                                        jmp   n715_statement_α
n714_statement_β:
                                                                                        jmp   n715_statement_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n715_statement_α:
                                                                                        jmp   n716_statement_α
n715_statement_β:
                                                                                        jmp   n716_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n716_statement_α:
                                                                                        jmp   n717_statement_α
n716_statement_β:
                                                                                        jmp   n717_statement_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n717_statement_α:
                                                                                        jmp   n718_statement_α
n717_statement_β:
                                                                                        jmp   n718_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n718_statement_α:
                                                                                        jmp   n719_statement_α
n718_statement_β:
                                                                                        jmp   n719_statement_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_α:
                                                                                        jmp   n720_statement_α
n719_statement_β:
                                                                                        jmp   n720_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n720_statement_α:
                                                                                        jmp   n721_statement_α
n720_statement_β:
                                                                                        jmp   n721_statement_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n721_statement_α:
                                                                                        jmp   n722_statement_α
n721_statement_β:
                                                                                        jmp   n722_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n722_statement_α:
                                                                                        jmp   n723_statement_α
n722_statement_β:
                                                                                        jmp   n723_statement_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_x)
#-----------------------------------------------------------------------------------------------------------------------
n723_statement_α:
                                                                                        jmp   n724_statement_α
n723_statement_β:
                                                                                        jmp   n724_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n724_statement_α:
                                                                                        jmp   n725_lit_integer_α
n724_statement_β:
                                                                                        jmp   n725_lit_integer_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n726_call_α
n725_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n729_keyword_snobol4_α
.Lx1100_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n726_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1102:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1102]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1101_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n729_keyword_snobol4_α
.Lx1101_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n727_assign_α
n726_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n729_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n727_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n728_statement_α
n727_assign_β:
                        add              rsp, 32
                                                                                        jmp   n729_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n728_statement_α:
                        add              rsp, 32
                                                                                        jmp   n729_keyword_snobol4_α
n728_statement_β:
                        add              rsp, 32
                                                                                        jmp   n729_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n729_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1106_0]               # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n730_assign_α
n729_keyword_snobol4_β:
                        add              rsp, 16
                                                                                        jmp   n732_lit_string_α
.Lx1106_0:
                        .quad            .Lx1106_0_s
.Lx1106_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n730_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # LCASE
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n731_statement_α
n730_assign_β:
                        add              rsp, 16
                                                                                        jmp   n732_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n731_statement_α:
                        add              rsp, 16
                                                                                        jmp   n732_lit_string_α
n731_statement_β:
                        add              rsp, 16
                                                                                        jmp   n732_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1110_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n733_assign_α
n732_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n735_lit_string_α
.Lx1110_0:
                        .quad            .Lx1110_0_s
.Lx1110_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n733_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # DIGITS
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n734_statement_α
n733_assign_β:
                        add              rsp, 16
                                                                                        jmp   n735_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n734_statement_α:
                        add              rsp, 16
                                                                                        jmp   n735_lit_string_α
n734_statement_β:
                        add              rsp, 16
                                                                                        jmp   n735_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1114_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n736_call_α
n735_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n739_lit_string_α
.Lx1114_0:
                        .quad            .Lx1114_0_s
.Lx1114_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1116:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1116]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1115_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n739_lit_string_α
.Lx1115_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n737_assign_α
n736_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n737_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # V
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n738_statement_α
n737_assign_β:
                        add              rsp, 32
                                                                                        jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n738_statement_α:
                        add              rsp, 32
                                                                                        jmp   n739_lit_string_α
n738_statement_β:
                        add              rsp, 32
                                                                                        jmp   n739_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n740_call_α
n739_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n743_lit_string_α
.Lx1120_0:
                        .quad            .Lx1120_0_s
.Lx1120_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n740_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1122:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1122]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1121_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n743_lit_string_α
.Lx1121_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n741_assign_α
n740_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n743_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n741_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # I
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n742_statement_α
n741_assign_β:
                        add              rsp, 32
                                                                                        jmp   n743_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n742_statement_α:
                        add              rsp, 32
                                                                                        jmp   n743_lit_string_α
n742_statement_β:
                        add              rsp, 32
                                                                                        jmp   n743_lit_string_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n744_call_α
n743_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
.Lx1126_0:
                        .quad            .Lx1126_0_s
.Lx1126_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n744_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1128:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1128]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1127_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
.Lx1127_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n745_assign_α
n744_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n745_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # A
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n746_statement_α
n745_assign_β:
                        add              rsp, 32
                                                                                        jmp   n747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_statement_α:
                        add              rsp, 32
                                                                                        jmp   n747_lit_string_α
n746_statement_β:
                        add              rsp, 32
                                                                                        jmp   n747_lit_string_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n748_call_α
n747_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n751_lit_string_α
.Lx1132_0:
                        .quad            .Lx1132_0_s
.Lx1132_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1134:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1134]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1133_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n751_lit_string_α
.Lx1133_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n749_assign_α
n748_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n751_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n749_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # F
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n750_statement_α
n749_assign_β:
                        add              rsp, 32
                                                                                        jmp   n751_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n750_statement_α:
                        add              rsp, 32
                                                                                        jmp   n751_lit_string_α
n750_statement_β:
                        add              rsp, 32
                                                                                        jmp   n751_lit_string_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1138_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n752_call_α
n751_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
.Lx1138_0:
                        .quad            .Lx1138_0_s
.Lx1138_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n752_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1140:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1140]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1139_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
.Lx1139_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n753_assign_α
n752_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n753_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # T
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n754_statement_α
n753_assign_β:
                        add              rsp, 32
                                                                                        jmp   n755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n754_statement_α:
                        add              rsp, 32
                                                                                        jmp   n755_lit_string_α
n754_statement_β:
                        add              rsp, 32
                                                                                        jmp   n755_lit_string_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n756_call_α
n755_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n759_lit_string_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n756_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1146:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1146]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1145_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n759_lit_string_α
.Lx1145_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n757_assign_α
n756_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n757_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # X
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n758_statement_α
n757_assign_β:
                        add              rsp, 32
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n758_statement_α:
                        add              rsp, 32
                                                                                        jmp   n759_lit_string_α
n758_statement_β:
                        add              rsp, 32
                                                                                        jmp   n759_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n760_call_α
n759_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n763_lit_string_α
.Lx1150_0:
                        .quad            .Lx1150_0_s
.Lx1150_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n760_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1152:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1152]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1151_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n763_lit_string_α
.Lx1151_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n761_assign_α
n760_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n763_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n761_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # eol
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n762_statement_α
n761_assign_β:
                        add              rsp, 32
                                                                                        jmp   n763_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n762_statement_α:
                        add              rsp, 32
                                                                                        jmp   n763_lit_string_α
n762_statement_β:
                        add              rsp, 32
                                                                                        jmp   n763_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n764_call_α
n763_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n767_lit_string_α
.Lx1156_0:
                        .quad            .Lx1156_0_s
.Lx1156_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n764_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1158:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1158]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1157_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n767_lit_string_α
.Lx1157_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n765_assign_α
n764_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n767_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n765_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # C
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n766_statement_α
n765_assign_β:
                        add              rsp, 32
                                                                                        jmp   n767_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n766_statement_α:
                        add              rsp, 32
                                                                                        jmp   n767_lit_string_α
n766_statement_β:
                        add              rsp, 32
                                                                                        jmp   n767_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n768_lit_integer_α
n767_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n771_lit_integer_α
.Lx1162_0:
                        .quad            .Lx1162_0_s
.Lx1162_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1163_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n769_call_α
n768_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n771_lit_integer_α
.Lx1163_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n769_call_α:
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
.Lrkfnzd1165:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1165]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1164_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n771_lit_integer_α
.Lx1164_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n770_statement_α
n769_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n771_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n770_statement_α:
                        add              rsp, 48
                                                                                        jmp   n771_lit_integer_α
n770_statement_β:
                        add              rsp, 48
                                                                                        jmp   n771_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1168_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n772_call_α
n771_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n775_call_α
.Lx1168_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n772_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd321:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd321]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1169_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_call_α
.Lx1169_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n773_assign_α
n772_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_call_α
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax                    # nl
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n774_statement_α
n773_assign_β:
                        add              rsp, 32
                                                                                        jmp   n775_call_α
#-----------------------------------------------------------------------------------------------------------------------
n774_statement_α:
                        add              rsp, 32
                                                                                        jmp   n775_call_α
n774_statement_β:
                        add              rsp, 32
                                                                                        jmp   n775_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n775_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1174:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1174]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1173_240
                        add              rsp, 16
                                                                                        jmp   n778_var_α
.Lx1173_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n776_assign_α
n775_call_β:
                        add              rsp, 16
                                                                                        jmp   n778_var_α
#-----------------------------------------------------------------------------------------------------------------------
n776_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # vars
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n777_statement_α
n776_assign_β:
                        add              rsp, 16
                                                                                        jmp   n778_var_α
#-----------------------------------------------------------------------------------------------------------------------
n777_statement_α:
                        add              rsp, 16
                                                                                        jmp   n778_var_α
n777_statement_β:
                        add              rsp, 16
                                                                                        jmp   n778_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n778_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n779_lit_string_α
n778_var_β:
                        add              rsp, 16
                                                                                        jmp   n784_var_α
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n780_subscript_α
n779_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n784_var_α
.Lx1179_0:
                        .quad            .Lx1179_0_s
.Lx1179_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n780_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1180_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n784_var_α
.Lx1180_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n781_lit_integer_α
n780_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n784_var_α
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1181_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n782_assign_var_α
n781_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n784_var_α
.Lx1181_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n782_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1182_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n784_var_α
.Lx1182_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n783_statement_α
n782_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n784_var_α
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_α:
                        add              rsp, 80
                                                                                        jmp   n784_var_α
n783_statement_β:
                        add              rsp, 80
                                                                                        jmp   n784_var_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n785_lit_string_α
n784_var_β:
                        add              rsp, 16
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n786_subscript_α
n785_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n790_var_α
.Lx1186_0:
                        .quad            .Lx1186_0_s
.Lx1186_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n786_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1187_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n790_var_α
.Lx1187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n787_lit_integer_α
n786_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n788_assign_var_α
n787_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n790_var_α
.Lx1188_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n788_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1189_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n790_var_α
.Lx1189_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n789_statement_α
n788_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_statement_α:
                        add              rsp, 80
                                                                                        jmp   n790_var_α
n789_statement_β:
                        add              rsp, 80
                                                                                        jmp   n790_var_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n790_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n791_lit_string_α
n790_var_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n792_subscript_α
n791_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n796_var_α
.Lx1193_0:
                        .quad            .Lx1193_0_s
.Lx1193_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n792_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1194_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n796_var_α
.Lx1194_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n793_lit_integer_α
n792_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n794_assign_var_α
n793_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n796_var_α
.Lx1195_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n794_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1196_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n796_var_α
.Lx1196_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n795_statement_α
n794_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_statement_α:
                        add              rsp, 80
                                                                                        jmp   n796_var_α
n795_statement_β:
                        add              rsp, 80
                                                                                        jmp   n796_var_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1199_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1199_240
                        add              rsp, 16
                                                                                        jmp   n836_var_α
.Lx1199_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n797_assign_α
n796_var_β:
                        add              rsp, 16
                                                                                        jmp   n836_var_α
.Lx1199_0:
                        .quad            .Lx1199_0_s
.Lx1199_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n797_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # line
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n798_statement_α
n797_assign_β:
                        add              rsp, 16
                                                                                        jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n798_statement_α:
                        add              rsp, 16
                                                                                        jmp   n799_var_α
n798_statement_β:
                        add              rsp, 16
                                                                                        jmp   n836_var_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n799_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n800_var_α
n799_var_β:
                        add              rsp, 16
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n800_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]                    # line
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n801_binop_α
n800_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n801_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n802_var_α
n801_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]                    # nl
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n803_binop_α
n802_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n804_assign_α
n803_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n804_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n805_statement_α
n804_assign_β:
                        add              rsp, 80
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n805_statement_α:
                        add              rsp, 80
                                                                                        jmp   n806_var_α
n805_statement_β:
                        add              rsp, 80
                                                                                        jmp   n806_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n807_call_α
n806_var_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n807_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1213:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1213]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1212_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n796_var_α
.Lx1212_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n808_lit_integer_α
n807_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n809_coerce_numeric_α
n808_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n796_var_α
.Lx1214_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n809_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1216_1
                        cmp              eax, 3
                                                                                        jne   .Lx1216_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1216_0
.Lx1216_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n810_coerce_numeric_α
.Lx1216_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n810_coerce_numeric_α
n809_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n810_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1218_1
                        cmp              eax, 3
                                                                                        jne   .Lx1218_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1218_0
.Lx1218_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n811_cmp_test_α
.Lx1218_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n811_cmp_test_α
n810_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n811_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1220_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n796_var_α
.Lx1220_240:
                                                                                        jmp   n812_statement_α
n811_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n812_statement_α:
                        add              rsp, 96
                                                                                        jmp   n813_var_α
n812_statement_β:
                        add              rsp, 96
                                                                                        jmp   n796_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n813_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n814_var_α
n813_var_β:
                        add              rsp, 16
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n814_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n815_binop_α
n814_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n815_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n816_assign_α
n815_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n816_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n817_statement_α
n816_assign_β:
                        add              rsp, 48
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_statement_α:
                        add              rsp, 48
                                                                                        jmp   n818_lit_string_α
n817_statement_β:
                        add              rsp, 48
                                                                                        jmp   n818_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n819_assign_α
n818_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n821_var_α
.Lx1229_0:
                        .quad            .Lx1229_0_s
.Lx1229_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n819_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n820_statement_α
n819_assign_β:
                        add              rsp, 16
                                                                                        jmp   n821_var_α
#-----------------------------------------------------------------------------------------------------------------------
n820_statement_α:
                        add              rsp, 16
                                                                                        jmp   n821_var_α
n820_statement_β:
                        add              rsp, 16
                                                                                        jmp   n821_var_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n821_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n822_call_α
n821_var_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n822_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1235:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1235]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1234_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n796_var_α
.Lx1234_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n823_lit_integer_α
n822_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n823_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1236_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n824_coerce_numeric_α
n823_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n796_var_α
.Lx1236_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n824_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1238_1
                        cmp              eax, 3
                                                                                        jne   .Lx1238_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1238_0
.Lx1238_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n825_coerce_numeric_α
.Lx1238_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n825_coerce_numeric_α
n824_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n825_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1240_1
                        cmp              eax, 3
                                                                                        jne   .Lx1240_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1240_0
.Lx1240_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n826_cmp_test_α
.Lx1240_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n826_cmp_test_α
n825_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n826_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1242_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n796_var_α
.Lx1242_240:
                                                                                        jmp   n827_statement_α
n826_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n827_statement_α:
                        add              rsp, 96
                                                                                        jmp   n828_var_α
n827_statement_β:
                        add              rsp, 96
                                                                                        jmp   n796_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n828_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n829_var_α
n828_var_β:
                        add              rsp, 16
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n830_binop_α
n829_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n831_assign_α
n830_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n832_statement_α
n831_assign_β:
                        add              rsp, 48
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_statement_α:
                        add              rsp, 48
                                                                                        jmp   n833_lit_string_α
n832_statement_β:
                        add              rsp, 48
                                                                                        jmp   n833_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n833_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1251_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n834_assign_α
n833_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
.Lx1251_0:
                        .quad            .Lx1251_0_s
.Lx1251_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n834_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n835_statement_α
n834_assign_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n835_statement_α:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
n835_statement_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n837_var_α
n836_var_β:
                        add              rsp, 16
                                                                                        jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n838_binop_α
n837_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n838_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n839_var_α
n838_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n839_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n840_binop_α
n839_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n840_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n841_assign_α
n840_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n841_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n842_statement_α
n841_assign_β:
                        add              rsp, 80
                                                                                        jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n842_statement_α:
                        add              rsp, 80
                                                                                        jmp   n843_call_α
n842_statement_β:
                        add              rsp, 80
                                                                                        jmp   n843_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n843_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1264:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1264]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1263_240
                        add              rsp, 16
                                                                                        jmp   n846_var_α
.Lx1263_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n844_assign_α
n843_call_β:
                        add              rsp, 16
                                                                                        jmp   n846_var_α
#-----------------------------------------------------------------------------------------------------------------------
n844_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # t0
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n845_statement_α
n844_assign_β:
                        add              rsp, 16
                                                                                        jmp   n846_var_α
#-----------------------------------------------------------------------------------------------------------------------
n845_statement_α:
                        add              rsp, 16
                                                                                        jmp   n846_var_α
n845_statement_β:
                        add              rsp, 16
                                                                                        jmp   n846_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:
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
                                                                                        jmp   n847_match_begin_α
n846_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n861_call_α
#-----------------------------------------------------------------------------------------------------------------------
n847_match_begin_α:
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
.Lx1270_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n848_match_patref_α
n847_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx1270_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1270_1
                                                                                        jmp   .Lx1270_0
.Lx1270_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx1270_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1270_2
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
                                                                                        jmp   n861_call_α
#-----------------------------------------------------------------------------------------------------------------------
n848_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1271_11
                        mov              rax, qword ptr [1879052656]                    # C
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 8
                                                                                        jne   .Lx1271_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1271_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1271_10
.Lx1271_9:
                        xor              eax, eax
.Lx1271_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx1271_11:
                        test             rax, rax
                                                                                        jz    .Lx1271_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1271_4]
                        lea              rdx, [rip + .Lx1271_5]
                                                                                        jmp   rax
.Lx1271_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n849_match_end_α
.Lx1271_5:
                                                                                        jmp   n847_match_begin_β
.Lx1271_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1271_2:
                        test             rax, rax
                                                                                        je    .Lx1271_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1271_7]
                        lea              rdx, [rip + .Lx1271_8]
                                                                                        jmp   rax
.Lx1271_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1271_2
.Lx1271_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1271_2
.Lx1271_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n847_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1271_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n849_match_end_α
.Lx1271_6:
                        add              rsp, 16
                                                                                        jmp   n847_match_begin_β
n848_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n849_match_end_α:
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
.Lx1273_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1273_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1273_1:
                        test             rax, rax
                                                                                        je    .Lx1273_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1273_3]
                        lea              rdx, [rip + .Lx1273_4]
                                                                                        jmp   rax
.Lx1273_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1273_1
.Lx1273_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1273_1
.Lx1273_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1273_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1273_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n850_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n850_statement_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n851_call_α
n850_statement_β:
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 128
                                                                                        jmp   n861_call_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n851_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1277:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1277]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1276_240
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_α
.Lx1276_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n852_assign_α
n851_call_β:
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n853_statement_α
n852_assign_β:
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n853_statement_α:
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_α
n853_statement_β:
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n854_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1281_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n855_var_α
n854_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1281_0:
                        .quad            .Lx1281_0_s
.Lx1281_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n855_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_var_α
n855_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n856_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n857_binop_α
n856_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n857_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1284_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1284_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n858_binop_α
n857_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n858_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n859_assign_α
n858_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n859_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1286_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n860_statement_α
n859_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1286_0:
                        .quad            .Lx1286_0_s
.Lx1286_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n860_statement_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
n860_statement_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n861_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1290:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1290]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1289_240
                        add              rsp, 16
                                                                                        jmp   n864_lit_string_α
.Lx1289_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n862_assign_α
n861_call_β:
                        add              rsp, 16
                                                                                        jmp   n864_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n862_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n863_statement_α
n862_assign_β:
                        add              rsp, 16
                                                                                        jmp   n864_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n863_statement_α:
                        add              rsp, 16
                                                                                        jmp   n864_lit_string_α
n863_statement_β:
                        add              rsp, 16
                                                                                        jmp   n864_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n864_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n865_assign_α
n864_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
.Lx1294_0:
                        .quad            .Lx1294_0_s
.Lx1294_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n865_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1295_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n866_statement_α
n865_assign_β:
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
.Lx1295_0:
                        .quad            .Lx1295_0_s
.Lx1295_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n866_statement_α:
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
n866_statement_β:
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n867_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1298_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n868_var_α
n867_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1298_0:
                        .quad            .Lx1298_0_s
.Lx1298_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n868_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n869_var_α
n868_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n869_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n870_binop_α
n869_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n870_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1301_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1301_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n871_binop_α
n870_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n871_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n872_assign_α
n871_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n872_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1303_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n873_statement_α
n872_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1303_0:
                        .quad            .Lx1303_0_s
.Lx1303_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n873_statement_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
n873_statement_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n874_goto_α:
                                                                                        jmp   n875_var_α
n874_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n875_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n876_lit_integer_α
n875_var_β:
                        add              rsp, 16
                                                                                        jmp   n882_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n876_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1308_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n877_subscript_α
n876_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n882_lit_integer_α
.Lx1308_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n877_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1309_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n882_lit_integer_α
.Lx1309_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n878_deref_α
n877_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n882_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n878_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1310_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n882_lit_integer_α
.Lx1310_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n879_call_α
n878_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n882_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n879_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1312_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1312_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1312_6]
                        lea              rdx, [rip + .Lx1312_7]
                                                                                        jmp   rax
.Lx1312_6:
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
                                                                                        jmp   .Lx1312_2
.Lx1312_7:
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
                                                                                        jmp   .Lx1312_2
.Lx1312_5:
                        add              rsp, 32
.Lx1312_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1312_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n882_lit_integer_α
.Lx1312_240:
                                                                                        jmp   n880_assign_α
n879_call_β:
                                                                                        jmp   n882_lit_integer_α
.Lx1312_0:
                        .quad            .Lx1312_0_s
.Lx1312_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n880_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1313_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n881_statement_α
n880_assign_β:
                        add              rsp, 80
                                                                                        jmp   n882_lit_integer_α
.Lx1313_0:
                        .quad            .Lx1313_0_s
.Lx1313_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n881_statement_α:
                        add              rsp, 80
                                                                                        jmp   n882_lit_integer_α
n881_statement_β:
                        add              rsp, 80
                                                                                        jmp   n882_lit_integer_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n882_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1316_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n883_assign_α
n882_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n885_lit_string_α
.Lx1316_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n883_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n884_statement_α
n883_assign_β:
                        add              rsp, 16
                                                                                        jmp   n885_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n884_statement_α:
                        add              rsp, 16
                                                                                        jmp   n885_lit_string_α
n884_statement_β:
                        add              rsp, 16
                                                                                        jmp   n885_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n885_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1320_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n886_call_α
n885_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1320_0:
                        .quad            .Lx1320_0_s
.Lx1320_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n886_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1322:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1322]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1321_240
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1321_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n887_assign_α
n886_call_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n887_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n888_statement_α
n887_assign_β:
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_statement_α:
                                                                                        jmp   n889_lit_string_α
n888_statement_β:
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n889_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1326_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n890_call_α
n889_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n892_save_restore_α
.Lx1326_0:
                        .quad            .Lx1326_0_s
.Lx1326_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n890_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1328:           .string          "SNO$NRET"
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
                        add              rsp, 48
                                                                                        jmp   n892_save_restore_α
.Lx1327_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n891_save_restore_α
n890_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n892_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n891_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n892_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n893_goto_α:
                                                                                        jmp   n710_statement_α
n893_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n894_goto_α:
                                                                                        jmp   n895_var_α
n894_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n895_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n896_lit_integer_α
n895_var_β:
                        add              rsp, 16
                                                                                        jmp   n900_var_α
#-----------------------------------------------------------------------------------------------------------------------
n896_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1336_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n897_binop_α
n896_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n900_var_α
.Lx1336_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n897_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1337_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n900_var_α
.Lx1337_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n898_assign_α
n897_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n900_var_α
#-----------------------------------------------------------------------------------------------------------------------
n898_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n899_statement_α
n898_assign_β:
                        add              rsp, 48
                                                                                        jmp   n900_var_α
#-----------------------------------------------------------------------------------------------------------------------
n899_statement_α:
                        add              rsp, 48
                                                                                        jmp   n900_var_α
n899_statement_β:
                        add              rsp, 48
                                                                                        jmp   n900_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_var_α
n900_var_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n901_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n902_subscript_α
n901_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n902_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1343_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
.Lx1343_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n903_assign_α
n902_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n903_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n904_statement_α
n903_assign_β:
                        add              rsp, 48
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_statement_α:
                        add              rsp, 48
                                                                                        jmp   n889_lit_string_α
n904_statement_β:
                        add              rsp, 48
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_goto_α:
                                                                                        jmp   n712_statement_α
n905_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n906_goto_α:
                                                                                        jmp   n907_var_α
n906_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n907_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_match_begin_α
n907_var_β:
                        add              rsp, 16
                                                                                        jmp   n923_var_α
#-----------------------------------------------------------------------------------------------------------------------
n908_match_begin_α:
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
.Lx1351_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n909_match_sequence_α
n908_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1351_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1351_1
                                                                                        jmp   .Lx1351_0
.Lx1351_1:
                        mov              r10, qword ptr [1879048192]
.Lx1351_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1351_2
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
                                                                                        jmp   n923_var_α
#-----------------------------------------------------------------------------------------------------------------------
n909_match_sequence_α:
                                                                                        jmp   n921_lit_integer_α
n909_match_sequence_as:
                                                                                        jmp   n910_match_end_α
n909_match_sequence_β:
                                                                                        jmp   n919_match_rpos_β
n909_match_sequence_af:
                                                                                        jmp   n908_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n910_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1355_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1355_9
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
.Lx1355_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1355_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1355_1:
                        test             rax, rax
                                                                                        je    .Lx1355_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1355_3]
                        lea              rdx, [rip + .Lx1355_4]
                                                                                        jmp   rax
.Lx1355_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1355_1
.Lx1355_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1355_1
.Lx1355_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1355_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1355_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 368]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 376]                     # outer_δ
                        mov              r15, qword ptr [rbp + 384]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 392]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n911_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n911_statement_α:
                        mov              rbp, qword ptr [rbp + 360]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n912_var_α
n911_statement_β:
                        mov              rbp, qword ptr [rbp + 360]
                        add              rsp, 464
                                                                                        jmp   n923_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n912_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n913_var_α
n912_var_β:
                        add              rsp, 16
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n913_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n914_subscript_α
n913_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n914_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1360_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n891_save_restore_α
.Lx1360_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n915_deref_α
n914_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n915_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1361_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n891_save_restore_α
.Lx1361_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n916_assign_α
n915_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n916_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n917_statement_α
n916_assign_β:
                        add              rsp, 64
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n917_statement_α:
                        add              rsp, 64
                                                                                        jmp   n891_save_restore_α
n917_statement_β:
                        add              rsp, 64
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1365_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n919_match_rpos_α
n918_lit_integer_β:
                                                                                        jmp   n920_match_any_β
.Lx1365_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n919_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n920_match_any_β
                                                                                        jmp   n910_match_end_α
n919_match_rpos_β:
                                                                                        jmp   n920_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n920_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n908_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n908_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n918_lit_integer_α
n920_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n908_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1369_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n922_match_pos_α
n921_lit_integer_β:
                                                                                        jmp   n908_match_begin_β
.Lx1369_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n922_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n908_match_begin_β
                                                                                        jmp   n920_match_any_α
n922_match_pos_β:
                                                                                        jmp   n908_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n923_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n924_assign_α
n923_var_β:
                        add              rsp, 16
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n924_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n925_statement_α
n924_assign_β:
                        add              rsp, 16
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n925_statement_α:
                        add              rsp, 16
                                                                                        jmp   n891_save_restore_α
n925_statement_β:
                        add              rsp, 16
                                                                                        jmp   n891_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n926_goto_α:
                                                                                        jmp   n923_var_α
n926_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n927_goto_α:
                                                                                        jmp   n714_statement_α
n927_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n928_goto_α:
                                                                                        jmp   n929_var_α
n928_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n929_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n930_var_α
n929_var_β:
                        add              rsp, 16
                                                                                        jmp   n936_var_α
#-----------------------------------------------------------------------------------------------------------------------
n930_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n931_subscript_α
n930_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n936_var_α
#-----------------------------------------------------------------------------------------------------------------------
n931_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1380_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n936_var_α
.Lx1380_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n932_deref_α
n931_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n936_var_α
#-----------------------------------------------------------------------------------------------------------------------
n932_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1381_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n936_var_α
.Lx1381_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n933_call_α
n932_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n936_var_α
#-----------------------------------------------------------------------------------------------------------------------
n933_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1383_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1383_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1383_6]
                        lea              rdx, [rip + .Lx1383_7]
                                                                                        jmp   rax
.Lx1383_6:
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
                                                                                        jmp   .Lx1383_2
.Lx1383_7:
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
                                                                                        jmp   .Lx1383_2
.Lx1383_5:
                        add              rsp, 32
.Lx1383_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1383_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n936_var_α
.Lx1383_240:
                                                                                        jmp   n934_assign_α
n933_call_β:
                                                                                        jmp   n936_var_α
.Lx1383_0:
                        .quad            .Lx1383_0_s
.Lx1383_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n934_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n935_statement_α
n934_assign_β:
                        add              rsp, 80
                                                                                        jmp   n936_var_α
#-----------------------------------------------------------------------------------------------------------------------
n935_statement_α:
                        add              rsp, 80
                                                                                        jmp   n936_var_α
n935_statement_β:
                        add              rsp, 80
                                                                                        jmp   n936_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n936_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n937_lit_integer_α
n936_var_β:
                        add              rsp, 16
                                                                                        jmp   n941_var_α
#-----------------------------------------------------------------------------------------------------------------------
n937_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1388_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n938_binop_α
n937_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n941_var_α
.Lx1388_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n938_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1389_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n941_var_α
.Lx1389_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n939_assign_α
n938_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n941_var_α
#-----------------------------------------------------------------------------------------------------------------------
n939_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n940_statement_α
n939_assign_β:
                        add              rsp, 48
                                                                                        jmp   n941_var_α
#-----------------------------------------------------------------------------------------------------------------------
n940_statement_α:
                        add              rsp, 48
                                                                                        jmp   n941_var_α
n940_statement_β:
                        add              rsp, 48
                                                                                        jmp   n941_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n941_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n942_var_α
n941_var_β:
                        add              rsp, 16
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n942_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n943_subscript_α
n942_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n943_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1395_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n953_lit_string_α
.Lx1395_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n944_var_α
n943_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n945_var_α
n944_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n946_subscript_α
n945_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n946_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1398_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n953_lit_string_α
.Lx1398_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n947_deref_α
n946_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n947_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1399_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n953_lit_string_α
.Lx1399_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n948_call_α
n947_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n948_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1401_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1401_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1401_6]
                        lea              rdx, [rip + .Lx1401_7]
                                                                                        jmp   rax
.Lx1401_6:
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
                                                                                        jmp   .Lx1401_2
.Lx1401_7:
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
                                                                                        jmp   .Lx1401_2
.Lx1401_5:
                        add              rsp, 32
.Lx1401_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1401_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n953_lit_string_α
.Lx1401_240:
                                                                                        jmp   n949_var_α
n948_call_β:
                                                                                        jmp   n953_lit_string_α
.Lx1401_0:
                        .quad            .Lx1401_0_s
.Lx1401_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n950_binop_α
n949_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n950_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1403_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n953_lit_string_α
.Lx1403_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n951_assign_var_α
n950_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n951_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1404_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n953_lit_string_α
.Lx1404_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n952_statement_α
n951_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n952_statement_α:
                        add              rsp, 176
                                                                                        jmp   n953_lit_string_α
n952_statement_β:
                        add              rsp, 176
                                                                                        jmp   n953_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n953_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1407_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n954_call_α
n953_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1407_0:
                        .quad            .Lx1407_0_s
.Lx1407_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n954_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1409:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1409]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1408_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1408_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n955_assign_α
n954_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n955_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n956_statement_α
n955_assign_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n956_statement_α:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
n956_statement_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n957_goto_α:
                                                                                        jmp   n716_statement_α
n957_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n958_goto_α:
                                                                                        jmp   n959_var_α
n958_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n959_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n960_var_α
n959_var_β:
                        add              rsp, 16
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n960_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n961_subscript_α
n960_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n961_subscript_α:
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
                                                                                        jmp   n966_var_α
.Lx1417_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n962_deref_α
n961_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n962_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1418_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n966_var_α
.Lx1418_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n963_call_α
n962_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n963_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1420_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1420_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1420_6]
                        lea              rdx, [rip + .Lx1420_7]
                                                                                        jmp   rax
.Lx1420_6:
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
                                                                                        jmp   .Lx1420_2
.Lx1420_7:
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
                                                                                        jmp   .Lx1420_2
.Lx1420_5:
                        add              rsp, 32
.Lx1420_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1420_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n966_var_α
.Lx1420_240:
                                                                                        jmp   n964_assign_α
n963_call_β:
                                                                                        jmp   n966_var_α
.Lx1420_0:
                        .quad            .Lx1420_0_s
.Lx1420_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n964_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n965_statement_α
n964_assign_β:
                        add              rsp, 80
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n965_statement_α:
                        add              rsp, 80
                                                                                        jmp   n966_var_α
n965_statement_β:
                        add              rsp, 80
                                                                                        jmp   n966_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n967_lit_integer_α
n966_var_β:
                        add              rsp, 16
                                                                                        jmp   n971_var_α
#-----------------------------------------------------------------------------------------------------------------------
n967_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1425_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n968_binop_α
n967_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n971_var_α
.Lx1425_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n968_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1426_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n971_var_α
.Lx1426_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n969_assign_α
n968_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n971_var_α
#-----------------------------------------------------------------------------------------------------------------------
n969_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n970_statement_α
n969_assign_β:
                        add              rsp, 48
                                                                                        jmp   n971_var_α
#-----------------------------------------------------------------------------------------------------------------------
n970_statement_α:
                        add              rsp, 48
                                                                                        jmp   n971_var_α
n970_statement_β:
                        add              rsp, 48
                                                                                        jmp   n971_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n971_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n972_var_α
n971_var_β:
                        add              rsp, 16
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n972_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n973_subscript_α
n972_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n973_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1432_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n983_lit_string_α
.Lx1432_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n974_var_α
n973_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n974_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n975_var_α
n974_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n975_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n976_subscript_α
n975_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n976_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1435_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n983_lit_string_α
.Lx1435_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n977_deref_α
n976_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n977_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1436_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n983_lit_string_α
.Lx1436_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n978_call_α
n977_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n978_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1438_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1438_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1438_6]
                        lea              rdx, [rip + .Lx1438_7]
                                                                                        jmp   rax
.Lx1438_6:
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
                                                                                        jmp   .Lx1438_2
.Lx1438_7:
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
                                                                                        jmp   .Lx1438_2
.Lx1438_5:
                        add              rsp, 32
.Lx1438_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1438_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n983_lit_string_α
.Lx1438_240:
                                                                                        jmp   n979_var_α
n978_call_β:
                                                                                        jmp   n983_lit_string_α
.Lx1438_0:
                        .quad            .Lx1438_0_s
.Lx1438_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n979_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n980_binop_α
n979_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n980_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1440_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n983_lit_string_α
.Lx1440_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n981_assign_var_α
n980_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n981_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1441_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n983_lit_string_α
.Lx1441_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n982_statement_α
n981_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n983_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n982_statement_α:
                        add              rsp, 176
                                                                                        jmp   n983_lit_string_α
n982_statement_β:
                        add              rsp, 176
                                                                                        jmp   n983_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n983_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1444_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n984_call_α
n983_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1444_0:
                        .quad            .Lx1444_0_s
.Lx1444_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n984_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1446:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1446]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1445_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1445_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n985_assign_α
n984_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n985_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n986_statement_α
n985_assign_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n986_statement_α:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
n986_statement_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n987_goto_α:
                                                                                        jmp   n718_statement_α
n987_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n988_goto_α:
                                                                                        jmp   n989_var_α
n988_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n989_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n990_var_α
n989_var_β:
                        add              rsp, 16
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n990_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n991_subscript_α
n990_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n991_subscript_α:
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
                                                                                        jmp   n996_var_α
.Lx1454_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n992_deref_α
n991_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n992_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1455_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n996_var_α
.Lx1455_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n993_call_α
n992_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n993_call_α:
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
                                                                                        jmp   n996_var_α
.Lx1457_240:
                                                                                        jmp   n994_assign_α
n993_call_β:
                                                                                        jmp   n996_var_α
.Lx1457_0:
                        .quad            .Lx1457_0_s
.Lx1457_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n994_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n995_statement_α
n994_assign_β:
                        add              rsp, 80
                                                                                        jmp   n996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n995_statement_α:
                        add              rsp, 80
                                                                                        jmp   n996_var_α
n995_statement_β:
                        add              rsp, 80
                                                                                        jmp   n996_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n996_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n997_lit_integer_α
n996_var_β:
                        add              rsp, 16
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n997_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1462_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n998_binop_α
n997_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1001_var_α
.Lx1462_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n998_binop_α:
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
                                                                                        jmp   n1001_var_α
.Lx1463_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n999_assign_α
n998_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n999_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1000_statement_α
n999_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_statement_α:
                        add              rsp, 48
                                                                                        jmp   n1001_var_α
n1000_statement_β:
                        add              rsp, 48
                                                                                        jmp   n1001_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1002_var_α
n1001_var_β:
                        add              rsp, 16
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1003_subscript_α
n1002_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_subscript_α:
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
                                                                                        jmp   n1013_lit_string_α
.Lx1469_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1004_var_α
n1003_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1005_var_α
n1004_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1006_subscript_α
n1005_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_subscript_α:
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
                                                                                        jmp   n1013_lit_string_α
.Lx1472_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1007_deref_α
n1006_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1473_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1013_lit_string_α
.Lx1473_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1008_call_α
n1007_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_call_α:
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
                                                                                        jmp   n1013_lit_string_α
.Lx1475_240:
                                                                                        jmp   n1009_var_α
n1008_call_β:
                                                                                        jmp   n1013_lit_string_α
.Lx1475_0:
                        .quad            .Lx1475_0_s
.Lx1475_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1009_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1010_binop_α
n1009_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1477_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1013_lit_string_α
.Lx1477_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1011_assign_var_α
n1010_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_assign_var_α:
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
                                                                                        jmp   n1013_lit_string_α
.Lx1478_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1012_statement_α
n1011_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1013_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1012_statement_α:
                        add              rsp, 176
                                                                                        jmp   n1013_lit_string_α
n1012_statement_β:
                        add              rsp, 176
                                                                                        jmp   n1013_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1013_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1481_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1014_call_α
n1013_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1481_0:
                        .quad            .Lx1481_0_s
.Lx1481_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1014_call_α:
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
                                                                                        jmp   n889_lit_string_α
.Lx1482_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1015_assign_α
n1014_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n1016_statement_α
n1015_assign_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_statement_α:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
n1016_statement_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_goto_α:
                                                                                        jmp   n720_statement_α
n1017_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1018_goto_α:
                                                                                        jmp   n1019_var_α
n1018_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1019_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1020_var_α
n1019_var_β:
                        add              rsp, 16
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1021_subscript_α
n1020_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1021_subscript_α:
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
                                                                                        jmp   n1026_var_α
.Lx1491_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1022_deref_α
n1021_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1492_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1026_var_α
.Lx1492_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1023_call_α
n1022_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1023_call_α:
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
                                                                                        jmp   n1026_var_α
.Lx1494_240:
                                                                                        jmp   n1024_assign_α
n1023_call_β:
                                                                                        jmp   n1026_var_α
.Lx1494_0:
                        .quad            .Lx1494_0_s
.Lx1494_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1024_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1025_statement_α
n1024_assign_β:
                        add              rsp, 80
                                                                                        jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1025_statement_α:
                        add              rsp, 80
                                                                                        jmp   n1026_var_α
n1025_statement_β:
                        add              rsp, 80
                                                                                        jmp   n1026_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1027_lit_integer_α
n1026_var_β:
                        add              rsp, 16
                                                                                        jmp   n1031_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1027_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1028_binop_α
n1027_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1031_var_α
.Lx1499_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1028_binop_α:
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
                                                                                        jmp   n1031_var_α
.Lx1500_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1029_assign_α
n1028_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1031_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1030_statement_α
n1029_assign_β:
                        add              rsp, 48
                                                                                        jmp   n1031_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1030_statement_α:
                        add              rsp, 48
                                                                                        jmp   n1031_var_α
n1030_statement_β:
                        add              rsp, 48
                                                                                        jmp   n1031_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n1031_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1032_var_α
n1031_var_β:
                        add              rsp, 16
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1033_subscript_α
n1032_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_subscript_α:
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
                                                                                        jmp   n1043_lit_string_α
.Lx1506_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1034_var_α
n1033_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1035_var_α
n1034_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1036_subscript_α
n1035_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_subscript_α:
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
                                                                                        jmp   n1043_lit_string_α
.Lx1509_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1037_deref_α
n1036_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1510_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1043_lit_string_α
.Lx1510_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1038_call_α
n1037_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1038_call_α:
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
                                                                                        jmp   n1043_lit_string_α
.Lx1512_240:
                                                                                        jmp   n1039_var_α
n1038_call_β:
                                                                                        jmp   n1043_lit_string_α
.Lx1512_0:
                        .quad            .Lx1512_0_s
.Lx1512_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1039_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1040_binop_α
n1039_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1514_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1043_lit_string_α
.Lx1514_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1041_assign_var_α
n1040_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_assign_var_α:
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
                                                                                        jmp   n1043_lit_string_α
.Lx1515_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1042_statement_α
n1041_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_statement_α:
                        add              rsp, 176
                                                                                        jmp   n1043_lit_string_α
n1042_statement_β:
                        add              rsp, 176
                                                                                        jmp   n1043_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1043_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1044_call_α
n1043_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1518_0:
                        .quad            .Lx1518_0_s
.Lx1518_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1044_call_α:
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
                                                                                        jmp   n889_lit_string_α
.Lx1519_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1045_assign_α
n1044_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n1046_statement_α
n1045_assign_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_statement_α:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
n1046_statement_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_goto_α:
                                                                                        jmp   n722_statement_α
n1047_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1048_goto_α:
                                                                                        jmp   n1049_var_α
n1048_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1049_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1050_var_α
n1049_var_β:
                        add              rsp, 16
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1050_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1051_subscript_α
n1050_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1051_subscript_α:
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
                                                                                        jmp   n1060_lit_string_α
.Lx1528_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1052_var_α
n1051_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1053_var_α
n1052_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1053_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1054_subscript_α
n1053_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1531_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1060_lit_string_α
.Lx1531_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1055_deref_α
n1054_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1532_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1060_lit_string_α
.Lx1532_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1056_call_α
n1055_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1534_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1534_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1534_6]
                        lea              rdx, [rip + .Lx1534_7]
                                                                                        jmp   rax
.Lx1534_6:
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
                                                                                        jmp   .Lx1534_2
.Lx1534_7:
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
                                                                                        jmp   .Lx1534_2
.Lx1534_5:
                        add              rsp, 32
.Lx1534_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1534_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n1060_lit_string_α
.Lx1534_240:
                                                                                        jmp   n1057_unop_α
n1056_call_β:
                                                                                        jmp   n1060_lit_string_α
.Lx1534_0:
                        .quad            .Lx1534_0_s
.Lx1534_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1057_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1058_assign_var_α
n1057_unop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1536_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1060_lit_string_α
.Lx1536_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1059_statement_α
n1058_assign_var_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_statement_α:
                        add              rsp, 160
                                                                                        jmp   n1060_lit_string_α
n1059_statement_β:
                        add              rsp, 160
                                                                                        jmp   n1060_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1060_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1539_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1061_call_α
n1060_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1539_0:
                        .quad            .Lx1539_0_s
.Lx1539_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1061_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1541:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1541]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1540_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
.Lx1540_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1062_assign_α
n1061_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # NEG
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n1063_statement_α
n1062_assign_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_statement_α:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
n1063_statement_β:
                        add              rsp, 32
                                                                                        jmp   n889_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1064_goto_α:
                                                                                        jmp   n724_statement_α
n1064_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1065_goto_α:
                                                                                        jmp   n796_var_α
n1065_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1066_goto_α:
                                                                                        jmp   n836_var_α
n1066_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1067_goto_α:
                                                                                        jmp   n861_call_α
n1067_goto_β:
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
.S5:                    .string          "*NEG"
.S6:                    .string          "A"
.S7:                    .string          "T"
.S8:                    .string          "*DIV"
.S9:                    .string          "*MUL"
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
