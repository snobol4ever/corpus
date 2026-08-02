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
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_subscript_α
.Lx18_0:
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
                                                                                        jne   .Lx19_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_integer_α
.Lx19_240:
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
                                                                                        jne   .Lx20_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n7_lit_integer_α
.Lx20_240:
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
                        mov              rdi, qword ptr [rip + .Lx22_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx22_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_6]
                        lea              rdx, [rip + .Lx22_7]
                                                                                        jmp   rax
.Lx22_6:
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
                                                                                        jmp   .Lx22_2
.Lx22_7:
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
                                                                                        jmp   .Lx22_2
.Lx22_5:
                        add              rsp, 32
.Lx22_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx22_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n7_lit_integer_α
.Lx22_240:
                                                                                        jmp   n6_assign_α
n5_call_β:
                                                                                        jmp   n7_lit_integer_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx23_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   n7_lit_integer_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx24_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd28:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd28]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx27_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_assign_α
n10_call_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_call_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd32:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd32]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx31_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n15_save_restore_α
.Lx31_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_save_restore_α
n13_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n15_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n14_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n15_save_restore_α:
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
n37_goto_α:
                                                                                        jmp   n38_var_α
n37_goto_β:
                                                                                        jmp   proc_LBL__PSH_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n40_binop_α
.Lx52_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx53_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n42_var_α
.Lx53_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n42_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n44_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx57_240
                        add              rsp, 16
                                                                                        jmp   n46_lit_string_α
.Lx57_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_call_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd61:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd61]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx60_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_save_restore_α
.Lx60_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_save_restore_α
n47_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n49_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n48_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n49_save_restore_α:
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
n66_goto_α:
                                                                                        jmp   n67_var_α
n66_goto_β:
                                                                                        jmp   proc_LBL__DRF_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_match_begin_α
n67_var_β:
                        add              rsp, 16
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_match_begin_α:
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
.Lx87_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n69_match_sequence_α
n68_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx87_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx87_1
                                                                                        jmp   .Lx87_0
.Lx87_1:
                        mov              r10, qword ptr [1879048192]
.Lx87_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_2
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
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_match_sequence_α:
                                                                                        jmp   n79_lit_integer_α
n69_match_sequence_as:
                                                                                        jmp   n70_match_end_α
n69_match_sequence_β:
                                                                                        jmp   n77_match_rpos_β
n69_match_sequence_af:
                                                                                        jmp   n68_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx91_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_9
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
.Lx91_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx91_1:
                        test             rax, rax
                                                                                        je    .Lx91_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx91_3]
                        lea              rdx, [rip + .Lx91_4]
                                                                                        jmp   rax
.Lx91_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx91_1
.Lx91_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx91_1
.Lx91_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx91_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx91_6
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
                                                                                        jmp   n71_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_var_α
n71_var_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_subscript_α
n72_var_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx94_240
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
.Lx94_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n74_deref_α
n73_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_assign_α
n74_deref_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n83_save_restore_α
n75_assign_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n77_match_rpos_α
n76_lit_integer_β:
                                                                                        jmp   n78_match_any_β
.Lx97_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n77_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n78_match_any_β
                                                                                        jmp   n70_match_end_α
n77_match_rpos_β:
                                                                                        jmp   n78_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n78_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n68_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n68_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n76_lit_integer_α
n78_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n68_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n80_match_pos_α
n79_lit_integer_β:
                                                                                        jmp   n68_match_begin_β
.Lx101_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n80_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n68_match_begin_β
                                                                                        jmp   n78_match_any_α
n80_match_pos_β:
                                                                                        jmp   n68_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_assign_α
n81_var_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
n82_assign_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n83_save_restore_α:
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
n107_goto_α:
                                                                                        jmp   n108_var_α
n107_goto_β:
                                                                                        jmp   proc_LBL__ADD_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n110_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n110_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n114_var_α
.Lx139_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx140_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n114_var_α
.Lx140_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_call_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx142_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx142_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx142_6]
                        lea              rdx, [rip + .Lx142_7]
                                                                                        jmp   rax
.Lx142_6:
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
                                                                                        jmp   .Lx142_2
.Lx142_7:
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
                                                                                        jmp   .Lx142_2
.Lx142_5:
                        add              rsp, 32
.Lx142_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx142_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n114_var_α
.Lx142_240:
                                                                                        jmp   n113_assign_α
n112_call_β:
                                                                                        jmp   n114_var_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n114_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n116_binop_α
.Lx145_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n118_var_α
.Lx146_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n118_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx150_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n129_lit_string_α
.Lx150_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n123_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n129_lit_string_α
.Lx153_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n129_lit_string_α
.Lx154_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n125_call_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx156_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx156_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx156_6]
                        lea              rdx, [rip + .Lx156_7]
                                                                                        jmp   rax
.Lx156_6:
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
                                                                                        jmp   .Lx156_2
.Lx156_7:
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
                                                                                        jmp   .Lx156_2
.Lx156_5:
                        add              rsp, 32
.Lx156_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx156_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n129_lit_string_α
.Lx156_240:
                                                                                        jmp   n126_var_α
n125_call_β:
                                                                                        jmp   n129_lit_string_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx158_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n129_lit_string_α
.Lx158_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx159_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n129_lit_string_α
.Lx159_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n129_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n130_call_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd162:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd162]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx161_240
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_α
.Lx161_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_assign_α
n130_call_β:
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_call_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd166:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd166]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx165_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n135_save_restore_α
.Lx165_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_save_restore_α
n133_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n135_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n134_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n135_save_restore_α:
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
n171_goto_α:
                                                                                        jmp   n172_var_α
n171_goto_β:
                                                                                        jmp   proc_LBL__SUB_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n174_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n174_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx203_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n178_var_α
.Lx203_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n175_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx204_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n178_var_α
.Lx204_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx206_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx206_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx206_6]
                        lea              rdx, [rip + .Lx206_7]
                                                                                        jmp   rax
.Lx206_6:
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
                                                                                        jmp   .Lx206_2
.Lx206_7:
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
                                                                                        jmp   .Lx206_2
.Lx206_5:
                        add              rsp, 32
.Lx206_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx206_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n178_var_α
.Lx206_240:
                                                                                        jmp   n177_assign_α
n176_call_β:
                                                                                        jmp   n178_var_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n178_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n180_binop_α
.Lx209_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx210_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n182_var_α
.Lx210_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n182_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n184_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n193_lit_string_α
.Lx214_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n187_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n187_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx217_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n193_lit_string_α
.Lx217_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n188_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx218_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n193_lit_string_α
.Lx218_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n189_call_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx220_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx220_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx220_6]
                        lea              rdx, [rip + .Lx220_7]
                                                                                        jmp   rax
.Lx220_6:
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
                                                                                        jmp   .Lx220_2
.Lx220_7:
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
                                                                                        jmp   .Lx220_2
.Lx220_5:
                        add              rsp, 32
.Lx220_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx220_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n193_lit_string_α
.Lx220_240:
                                                                                        jmp   n190_var_α
n189_call_β:
                                                                                        jmp   n193_lit_string_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n191_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx222_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n193_lit_string_α
.Lx222_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n192_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx223_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n193_lit_string_α
.Lx223_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n193_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n194_call_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd226:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd226]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx225_240
                        add              rsp, 16
                                                                                        jmp   n196_lit_string_α
.Lx225_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n195_assign_α
n194_call_β:
                        add              rsp, 16
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n197_call_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd230:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd230]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx229_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n199_save_restore_α
.Lx229_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n198_save_restore_α
n197_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n199_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n198_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n199_save_restore_α:
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
n235_goto_α:
                                                                                        jmp   n236_var_α
n235_goto_β:
                                                                                        jmp   proc_LBL__MUL_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n238_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n238_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx267_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n242_var_α
.Lx267_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n239_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx268_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n242_var_α
.Lx268_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n240_call_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx270_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx270_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx270_6]
                        lea              rdx, [rip + .Lx270_7]
                                                                                        jmp   rax
.Lx270_6:
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
                                                                                        jmp   .Lx270_2
.Lx270_7:
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
                                                                                        jmp   .Lx270_2
.Lx270_5:
                        add              rsp, 32
.Lx270_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx270_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n242_var_α
.Lx270_240:
                                                                                        jmp   n241_assign_α
n240_call_β:
                                                                                        jmp   n242_var_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n242_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n243_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n244_binop_α
.Lx273_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx274_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n246_var_α
.Lx274_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n246_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n248_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx278_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n257_lit_string_α
.Lx278_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n251_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n251_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx281_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n257_lit_string_α
.Lx281_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n252_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx282_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n257_lit_string_α
.Lx282_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n253_call_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx284_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx284_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx284_6]
                        lea              rdx, [rip + .Lx284_7]
                                                                                        jmp   rax
.Lx284_6:
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
                                                                                        jmp   .Lx284_2
.Lx284_7:
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
                                                                                        jmp   .Lx284_2
.Lx284_5:
                        add              rsp, 32
.Lx284_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx284_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n257_lit_string_α
.Lx284_240:
                                                                                        jmp   n254_var_α
n253_call_β:
                                                                                        jmp   n257_lit_string_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n255_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx286_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n257_lit_string_α
.Lx286_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n256_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx287_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n257_lit_string_α
.Lx287_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n257_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n258_call_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd290:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd290]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx289_240
                        add              rsp, 16
                                                                                        jmp   n260_lit_string_α
.Lx289_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n259_assign_α
n258_call_β:
                        add              rsp, 16
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n261_call_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd294:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd294]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx293_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n263_save_restore_α
.Lx293_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n262_save_restore_α
n261_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n263_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n262_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n263_save_restore_α:
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
n299_goto_α:
                                                                                        jmp   n300_var_α
n299_goto_β:
                                                                                        jmp   proc_LBL__DIV_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n302_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n302_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx331_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n306_var_α
.Lx331_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n303_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx332_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n306_var_α
.Lx332_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n304_call_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx334_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx334_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx334_6]
                        lea              rdx, [rip + .Lx334_7]
                                                                                        jmp   rax
.Lx334_6:
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
                                                                                        jmp   .Lx334_2
.Lx334_7:
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
                                                                                        jmp   .Lx334_2
.Lx334_5:
                        add              rsp, 32
.Lx334_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx334_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n306_var_α
.Lx334_240:
                                                                                        jmp   n305_assign_α
n304_call_β:
                                                                                        jmp   n306_var_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n306_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n307_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n308_binop_α
.Lx337_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n308_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx338_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n310_var_α
.Lx338_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n309_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n310_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n312_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n312_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n321_lit_string_α
.Lx342_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n315_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx345_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n321_lit_string_α
.Lx345_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n316_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx346_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n321_lit_string_α
.Lx346_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n317_call_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx348_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx348_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_6]
                        lea              rdx, [rip + .Lx348_7]
                                                                                        jmp   rax
.Lx348_6:
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
                                                                                        jmp   .Lx348_2
.Lx348_7:
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
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        add              rsp, 32
.Lx348_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx348_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n321_lit_string_α
.Lx348_240:
                                                                                        jmp   n318_var_α
n317_call_β:
                                                                                        jmp   n321_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n319_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx350_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n321_lit_string_α
.Lx350_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n320_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx351_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n321_lit_string_α
.Lx351_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n321_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n322_call_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd354:            .string          "SNO$NAME"
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
                                                                                        jmp   n324_lit_string_α
.Lx353_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n323_assign_α
n322_call_β:
                        add              rsp, 16
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n325_call_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd358:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd358]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx357_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n327_save_restore_α
.Lx357_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n326_save_restore_α
n325_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n327_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n326_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n327_save_restore_α:
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
                        .globl           proc_LBL__NEG_α
proc_LBL__NEG_α:
proc_LBL__NEG_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n363_goto_α:
                                                                                        jmp   n364_var_α
n363_goto_β:
                                                                                        jmp   proc_LBL__NEG_ω
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n366_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n366_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx384_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n374_lit_string_α
.Lx384_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n369_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n369_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx387_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n374_lit_string_α
.Lx387_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n370_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n370_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx388_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n374_lit_string_α
.Lx388_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n371_call_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx390_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx390_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx390_6]
                        lea              rdx, [rip + .Lx390_7]
                                                                                        jmp   rax
.Lx390_6:
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
                                                                                        jmp   .Lx390_2
.Lx390_7:
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
                                                                                        jmp   .Lx390_2
.Lx390_5:
                        add              rsp, 32
.Lx390_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx390_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n374_lit_string_α
.Lx390_240:
                                                                                        jmp   n372_unop_α
n371_call_β:
                                                                                        jmp   n374_lit_string_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n372_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n373_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx392_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n374_lit_string_α
.Lx392_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160
                                                                                        jmp   n374_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n375_call_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd395:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd395]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 16
                                                                                        jmp   n377_lit_string_α
.Lx394_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n376_assign_α
n375_call_β:
                        add              rsp, 16
                                                                                        jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # NEG
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n378_call_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:
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
                                                                                        jmp   n380_save_restore_α
.Lx398_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n379_save_restore_α
n378_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n380_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n379_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n380_save_restore_α:
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
n404_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n405_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n405_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx409_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx409_1
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "EMIT"
.Lx409_1:
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
n410_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n411_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n411_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx415_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx415_1
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "PSH"
.Lx415_1:
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
n416_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n417_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n417_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx421_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx421_1
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "DRF"
.Lx421_1:
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
n422_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n423_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n423_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx427_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx427_1
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "ADD"
.Lx427_1:
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
n428_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n429_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n429_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx433_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx433_1
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "SUB"
.Lx433_1:
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
n434_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n435_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n435_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx439_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx439_1
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "MUL"
.Lx439_1:
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
n440_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n441_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n441_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx445_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx445_1
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "DIV"
.Lx445_1:
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
n446_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n447_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n447_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx451_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx451_1
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "NEG"
.Lx451_1:
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
                        lea              rax, [rip + n454_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n452_match_assign_save_α:
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
                                                                                        jmp   n453_match_any_α
n452_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n453_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx458_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx458_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx458_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx458_240:
                        add              r14d, 1
                                                                                        jmp   n454_match_assign_cond_α
n453_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n454_match_assign_cond_α:
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
n454_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n453_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx461_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx461_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx462_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx462_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx462_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx462_0:
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
                        lea              rax, [rip + n465_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n463_match_assign_save_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n464_match_span_α
n463_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n464_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx469_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx469_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx469_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx469_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx469_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx469_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx469_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx469_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx469_1
                        add              ecx, 1
                                                                                        jmp   .Lx469_0
.Lx469_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx469_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx469_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n465_match_assign_cond_α
n464_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n465_match_assign_cond_α:
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
n465_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n464_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx472_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx472_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx473_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx473_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx473_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx473_0:
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
                        lea              rax, [rip + n474_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n474_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx482_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n480_match_patref_α
.Lx482_21:
                        lea              rax, [rip + .Lx482_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n479_match_patref_α
.Lx482_22:
                        lea              rax, [rip + .Lx482_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n475_match_sequence_α
n474_match_alternate_s0:
                        lea              rax, [rip + .Lx482_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n474_match_alternate_as
n474_match_alternate_s1:
                        lea              rax, [rip + .Lx482_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n474_match_alternate_as
n474_match_alternate_s2:
                        lea              rax, [rip + .Lx482_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n474_match_alternate_as
.Lx482_40:
                                                                                        jmp   n480_match_patref_β
.Lx482_41:
                                                                                        jmp   n479_match_patref_β
.Lx482_42:
                                                                                        jmp   n475_match_sequence_β
n474_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n474_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n474_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx482_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n475_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n478_match_lit_α
n475_match_sequence_as:
                                                                                        jmp   n474_match_alternate_s2
n475_match_sequence_β:
                                                                                        jmp   n476_match_lit_β
n475_match_sequence_af:
                                                                                        jmp   n474_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n476_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n477_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n477_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n474_match_alternate_s2
n476_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n477_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n477_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx487_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx487_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx487_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx487_10
.Lx487_9:
                        xor              eax, eax
.Lx487_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx487_11:
                        test             rax, rax
                                                                                        jz    .Lx487_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx487_4]
                        lea              rdx, [rip + .Lx487_5]
                                                                                        jmp   rax
.Lx487_4:
                                                                                        jmp   n476_match_lit_α
.Lx487_5:
                                                                                        jmp   n478_match_lit_β
.Lx487_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx487_2:
                        test             rax, rax
                                                                                        je    .Lx487_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx487_7]
                        lea              rdx, [rip + .Lx487_8]
                                                                                        jmp   rax
.Lx487_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx487_2
.Lx487_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx487_2
.Lx487_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n478_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx487_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n476_match_lit_α
.Lx487_6:
                        add              rsp, 16
                                                                                        jmp   n478_match_lit_β
n477_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n478_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n474_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n474_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n477_match_defer_α
n478_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n474_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n479_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx490_11
                        mov              rax, qword ptr [1879052560]                    # I
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx490_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx490_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx490_10
.Lx490_9:
                        xor              eax, eax
.Lx490_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx490_11:
                        test             rax, rax
                                                                                        jz    .Lx490_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx490_4]
                        lea              rdx, [rip + .Lx490_5]
                                                                                        jmp   rax
.Lx490_4:
                                                                                        jmp   n474_match_alternate_s1
.Lx490_5:
                                                                                        jmp   n474_match_alternate_af
.Lx490_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx490_2:
                        test             rax, rax
                                                                                        je    .Lx490_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx490_7]
                        lea              rdx, [rip + .Lx490_8]
                                                                                        jmp   rax
.Lx490_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx490_2
.Lx490_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx490_2
.Lx490_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n474_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx490_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n474_match_alternate_s1
.Lx490_6:
                        add              rsp, 16
                                                                                        jmp   n474_match_alternate_af
n479_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n480_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx491_11
                        mov              rax, qword ptr [1879052544]                    # V
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 8
                                                                                        jne   .Lx491_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx491_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx491_10
.Lx491_9:
                        xor              eax, eax
.Lx491_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx491_11:
                        test             rax, rax
                                                                                        jz    .Lx491_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx491_4]
                        lea              rdx, [rip + .Lx491_5]
                                                                                        jmp   rax
.Lx491_4:
                                                                                        jmp   n474_match_alternate_s0
.Lx491_5:
                                                                                        jmp   n474_match_alternate_af
.Lx491_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx491_2:
                        test             rax, rax
                                                                                        je    .Lx491_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx491_7]
                        lea              rdx, [rip + .Lx491_8]
                                                                                        jmp   rax
.Lx491_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx491_2
.Lx491_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx491_2
.Lx491_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n474_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx491_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n474_match_alternate_s0
.Lx491_6:
                        add              rsp, 16
                                                                                        jmp   n474_match_alternate_af
n480_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx492_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx492_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx493_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx493_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx493_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx493_0:
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
                        lea              rax, [rip + n494_match_alternate_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n494_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx505_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n503_match_patref_α
.Lx505_21:
                        lea              rax, [rip + .Lx505_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n500_match_sequence_α
.Lx505_22:
                        lea              rax, [rip + .Lx505_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n495_match_sequence_α
n494_match_alternate_s0:
                        lea              rax, [rip + .Lx505_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n494_match_alternate_as
n494_match_alternate_s1:
                        lea              rax, [rip + .Lx505_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n494_match_alternate_as
n494_match_alternate_s2:
                        lea              rax, [rip + .Lx505_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n494_match_alternate_as
.Lx505_40:
                                                                                        jmp   n503_match_patref_β
.Lx505_41:
                                                                                        jmp   n500_match_sequence_β
.Lx505_42:
                                                                                        jmp   n495_match_sequence_β
n494_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n494_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n494_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx505_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n495_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n499_match_lit_α
n495_match_sequence_as:
                                                                                        jmp   n494_match_alternate_s2
n495_match_sequence_β:
                                                                                        jmp   n498_match_assign_cond_β
n495_match_sequence_af:
                                                                                        jmp   n494_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n496_match_assign_save_α:
                        lea              rdi, [rbp + 160]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n497_match_defer_α
n496_match_assign_save_β:
                        lea              rdi, [rbp + 160]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n499_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n497_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx510_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx510_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx510_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx510_10
.Lx510_9:
                        xor              eax, eax
.Lx510_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx510_11:
                        test             rax, rax
                                                                                        jz    .Lx510_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx510_4]
                        lea              rdx, [rip + .Lx510_5]
                                                                                        jmp   rax
.Lx510_4:
                                                                                        jmp   n498_match_assign_cond_α
.Lx510_5:
                                                                                        jmp   n496_match_assign_save_β
.Lx510_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx510_2:
                        test             rax, rax
                                                                                        je    .Lx510_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx510_7]
                        lea              rdx, [rip + .Lx510_8]
                                                                                        jmp   rax
.Lx510_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx510_2
.Lx510_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx510_2
.Lx510_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n496_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx510_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n498_match_assign_cond_α
.Lx510_6:
                        add              rsp, 16
                                                                                        jmp   n496_match_assign_save_β
n497_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n498_match_assign_cond_α:
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
                                                                                        jmp   n494_match_alternate_s2
n498_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n497_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n499_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n494_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n494_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n496_match_assign_save_α
n499_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n494_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n500_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n502_match_lit_α
n500_match_sequence_as:
                                                                                        jmp   n494_match_alternate_s1
n500_match_sequence_β:
                                                                                        jmp   n501_match_defer_β
n500_match_sequence_af:
                                                                                        jmp   n494_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n501_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx517_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx517_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx517_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx517_10
.Lx517_9:
                        xor              eax, eax
.Lx517_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx517_11:
                        test             rax, rax
                                                                                        jz    .Lx517_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx517_4]
                        lea              rdx, [rip + .Lx517_5]
                                                                                        jmp   rax
.Lx517_4:
                                                                                        jmp   n494_match_alternate_s1
.Lx517_5:
                                                                                        jmp   n502_match_lit_β
.Lx517_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx517_2:
                        test             rax, rax
                                                                                        je    .Lx517_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx517_7]
                        lea              rdx, [rip + .Lx517_8]
                                                                                        jmp   rax
.Lx517_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx517_2
.Lx517_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx517_2
.Lx517_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n502_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx517_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n494_match_alternate_s1
.Lx517_6:
                        add              rsp, 16
                                                                                        jmp   n502_match_lit_β
n501_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n502_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n494_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n494_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n501_match_defer_α
n502_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n494_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n503_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx520_11
                        mov              rax, qword ptr [1879052576]                    # A
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx520_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx520_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx520_10
.Lx520_9:
                        xor              eax, eax
.Lx520_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx520_11:
                        test             rax, rax
                                                                                        jz    .Lx520_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx520_4]
                        lea              rdx, [rip + .Lx520_5]
                                                                                        jmp   rax
.Lx520_4:
                                                                                        jmp   n494_match_alternate_s0
.Lx520_5:
                                                                                        jmp   n494_match_alternate_af
.Lx520_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx520_2:
                        test             rax, rax
                                                                                        je    .Lx520_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx520_7]
                        lea              rdx, [rip + .Lx520_8]
                                                                                        jmp   rax
.Lx520_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx520_2
.Lx520_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx520_2
.Lx520_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n494_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx520_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n494_match_alternate_s0
.Lx520_6:
                        add              rsp, 16
                                                                                        jmp   n494_match_alternate_af
n503_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx521_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx521_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx522_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx522_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx522_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx522_0:
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
                        lea              rax, [rip + n523_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n523_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n536_match_patref_α
n523_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n523_match_sequence_β:
                                                                                        jmp   n524_match_alternate_β
n523_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx540_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n531_match_sequence_α
.Lx540_21:
                        lea              rax, [rip + .Lx540_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n526_match_sequence_α
.Lx540_22:
                        lea              rax, [rip + .Lx540_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n525_match_lit_α
n524_match_alternate_s0:
                        lea              rax, [rip + .Lx540_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n524_match_alternate_as
n524_match_alternate_s1:
                        lea              rax, [rip + .Lx540_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n524_match_alternate_as
n524_match_alternate_s2:
                        lea              rax, [rip + .Lx540_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n524_match_alternate_as
.Lx540_40:
                                                                                        jmp   n531_match_sequence_β
.Lx540_41:
                                                                                        jmp   n526_match_sequence_β
.Lx540_42:
                                                                                        jmp   n525_match_lit_β
n524_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n524_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n524_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx540_19:
                                                                                        jmp   n536_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n525_match_lit_α:
                                                                                        jmp   n524_match_alternate_s2
n525_match_lit_β:
                                                                                        jmp   n524_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n526_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n530_match_lit_α
n526_match_sequence_as:
                                                                                        jmp   n524_match_alternate_s1
n526_match_sequence_β:
                                                                                        jmp   n529_match_assign_cond_β
n526_match_sequence_af:
                                                                                        jmp   n524_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n527_match_assign_save_α:
                        lea              rdi, [rbp + 224]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n528_match_defer_α
n527_match_assign_save_β:
                        lea              rdi, [rbp + 224]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n530_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n528_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx547_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx547_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx547_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx547_10
.Lx547_9:
                        xor              eax, eax
.Lx547_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx547_11:
                        test             rax, rax
                                                                                        jz    .Lx547_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx547_4]
                        lea              rdx, [rip + .Lx547_5]
                                                                                        jmp   rax
.Lx547_4:
                                                                                        jmp   n529_match_assign_cond_α
.Lx547_5:
                                                                                        jmp   n527_match_assign_save_β
.Lx547_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx547_2:
                        test             rax, rax
                                                                                        je    .Lx547_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx547_7]
                        lea              rdx, [rip + .Lx547_8]
                                                                                        jmp   rax
.Lx547_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx547_2
.Lx547_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx547_2
.Lx547_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n527_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx547_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n529_match_assign_cond_α
.Lx547_6:
                        add              rsp, 16
                                                                                        jmp   n527_match_assign_save_β
n528_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n529_match_assign_cond_α:
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
                                                                                        jmp   n524_match_alternate_s1
n529_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n528_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n530_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n524_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n524_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n527_match_assign_save_α
n530_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n524_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n531_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n535_match_lit_α
n531_match_sequence_as:
                                                                                        jmp   n524_match_alternate_s0
n531_match_sequence_β:
                                                                                        jmp   n534_match_assign_cond_β
n531_match_sequence_af:
                                                                                        jmp   n524_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n532_match_assign_save_α:
                        lea              rdi, [rbp + 144]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n533_match_defer_α
n532_match_assign_save_β:
                        lea              rdi, [rbp + 144]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n535_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n533_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx556_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx556_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx556_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx556_10
.Lx556_9:
                        xor              eax, eax
.Lx556_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx556_11:
                        test             rax, rax
                                                                                        jz    .Lx556_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx556_4]
                        lea              rdx, [rip + .Lx556_5]
                                                                                        jmp   rax
.Lx556_4:
                                                                                        jmp   n534_match_assign_cond_α
.Lx556_5:
                                                                                        jmp   n532_match_assign_save_β
.Lx556_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx556_2:
                        test             rax, rax
                                                                                        je    .Lx556_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx556_7]
                        lea              rdx, [rip + .Lx556_8]
                                                                                        jmp   rax
.Lx556_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx556_2
.Lx556_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx556_2
.Lx556_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n532_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx556_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n534_match_assign_cond_α
.Lx556_6:
                        add              rsp, 16
                                                                                        jmp   n532_match_assign_save_β
n533_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n534_match_assign_cond_α:
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
                                                                                        jmp   n524_match_alternate_s0
n534_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n533_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n535_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n524_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n524_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n532_match_assign_save_α
n535_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n524_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n536_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx561_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx561_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx561_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx561_10
.Lx561_9:
                        xor              eax, eax
.Lx561_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx561_11:
                        test             rax, rax
                                                                                        jz    .Lx561_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx561_4]
                        lea              rdx, [rip + .Lx561_5]
                                                                                        jmp   rax
.Lx561_4:
                                                                                        jmp   n524_match_alternate_α
.Lx561_5:
                                                                                        jmp   proc_PAT$4_ω
.Lx561_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx561_2:
                        test             rax, rax
                                                                                        je    .Lx561_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx561_7]
                        lea              rdx, [rip + .Lx561_8]
                                                                                        jmp   rax
.Lx561_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx561_2
.Lx561_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx561_2
.Lx561_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx561_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n524_match_alternate_α
.Lx561_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n536_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx562_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx562_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx563_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx563_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx563_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx563_0:
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
                        lea              rax, [rip + n564_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n564_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n577_match_patref_α
n564_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n564_match_sequence_β:
                                                                                        jmp   n565_match_alternate_β
n564_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx581_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n572_match_sequence_α
.Lx581_21:
                        lea              rax, [rip + .Lx581_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n567_match_sequence_α
.Lx581_22:
                        lea              rax, [rip + .Lx581_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n566_match_lit_α
n565_match_alternate_s0:
                        lea              rax, [rip + .Lx581_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n565_match_alternate_as
n565_match_alternate_s1:
                        lea              rax, [rip + .Lx581_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n565_match_alternate_as
n565_match_alternate_s2:
                        lea              rax, [rip + .Lx581_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n565_match_alternate_as
.Lx581_40:
                                                                                        jmp   n572_match_sequence_β
.Lx581_41:
                                                                                        jmp   n567_match_sequence_β
.Lx581_42:
                                                                                        jmp   n566_match_lit_β
n565_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n565_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n565_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx581_19:
                                                                                        jmp   n577_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n566_match_lit_α:
                                                                                        jmp   n565_match_alternate_s2
n566_match_lit_β:
                                                                                        jmp   n565_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n567_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n571_match_lit_α
n567_match_sequence_as:
                                                                                        jmp   n565_match_alternate_s1
n567_match_sequence_β:
                                                                                        jmp   n570_match_assign_cond_β
n567_match_sequence_af:
                                                                                        jmp   n565_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n568_match_assign_save_α:
                        lea              rdi, [rbp + 224]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n569_match_defer_α
n568_match_assign_save_β:
                        lea              rdi, [rbp + 224]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n571_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n569_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx588_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx588_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx588_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx588_10
.Lx588_9:
                        xor              eax, eax
.Lx588_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx588_11:
                        test             rax, rax
                                                                                        jz    .Lx588_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx588_4]
                        lea              rdx, [rip + .Lx588_5]
                                                                                        jmp   rax
.Lx588_4:
                                                                                        jmp   n570_match_assign_cond_α
.Lx588_5:
                                                                                        jmp   n568_match_assign_save_β
.Lx588_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx588_2:
                        test             rax, rax
                                                                                        je    .Lx588_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx588_7]
                        lea              rdx, [rip + .Lx588_8]
                                                                                        jmp   rax
.Lx588_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx588_2
.Lx588_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx588_2
.Lx588_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n568_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx588_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n570_match_assign_cond_α
.Lx588_6:
                        add              rsp, 16
                                                                                        jmp   n568_match_assign_save_β
n569_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n570_match_assign_cond_α:
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
                                                                                        jmp   n565_match_alternate_s1
n570_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n569_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n571_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n565_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n565_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n568_match_assign_save_α
n571_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n565_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n572_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n576_match_lit_α
n572_match_sequence_as:
                                                                                        jmp   n565_match_alternate_s0
n572_match_sequence_β:
                                                                                        jmp   n575_match_assign_cond_β
n572_match_sequence_af:
                                                                                        jmp   n565_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n573_match_assign_save_α:
                        lea              rdi, [rbp + 144]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n574_match_defer_α
n573_match_assign_save_β:
                        lea              rdi, [rbp + 144]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n576_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n574_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx597_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx597_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx597_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx597_10
.Lx597_9:
                        xor              eax, eax
.Lx597_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx597_11:
                        test             rax, rax
                                                                                        jz    .Lx597_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx597_4]
                        lea              rdx, [rip + .Lx597_5]
                                                                                        jmp   rax
.Lx597_4:
                                                                                        jmp   n575_match_assign_cond_α
.Lx597_5:
                                                                                        jmp   n573_match_assign_save_β
.Lx597_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx597_2:
                        test             rax, rax
                                                                                        je    .Lx597_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx597_7]
                        lea              rdx, [rip + .Lx597_8]
                                                                                        jmp   rax
.Lx597_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx597_2
.Lx597_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx597_2
.Lx597_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n573_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx597_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n575_match_assign_cond_α
.Lx597_6:
                        add              rsp, 16
                                                                                        jmp   n573_match_assign_save_β
n574_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n575_match_assign_cond_α:
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
                                                                                        jmp   n565_match_alternate_s0
n575_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n574_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n576_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n565_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n565_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n573_match_assign_save_α
n576_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n565_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n577_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx602_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx602_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx602_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx602_10
.Lx602_9:
                        xor              eax, eax
.Lx602_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx602_11:
                        test             rax, rax
                                                                                        jz    .Lx602_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx602_4]
                        lea              rdx, [rip + .Lx602_5]
                                                                                        jmp   rax
.Lx602_4:
                                                                                        jmp   n565_match_alternate_α
.Lx602_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx602_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx602_2:
                        test             rax, rax
                                                                                        je    .Lx602_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx602_7]
                        lea              rdx, [rip + .Lx602_8]
                                                                                        jmp   rax
.Lx602_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx602_2
.Lx602_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx602_2
.Lx602_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx602_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n565_match_alternate_α
.Lx602_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n577_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx603_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx603_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx604_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx604_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx604_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx604_0:
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
n605_lit_integer_α:
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
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n606_call_α
.Lx609_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n606_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lbynamefn225:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn225]                     # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx610_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx610_240:
                                                                                        jmp   n607_match_value_α
n606_call_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n607_match_value_α:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx611_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx611_4]
                        lea              rdx, [rip + .Lx611_5]
                                                                                        jmp   rax
.Lx611_4:
                                                                                        jmp   n608_match_fence1_α
.Lx611_5:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx611_0:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx611_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx611_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx611_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n608_match_fence1_α
.Lx611_6:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
n607_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n608_match_fence1_α:
                        mov              rsp, rbp
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanhit
n608_match_fence1_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx614_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx614_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx615_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx615_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx615_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx615_0:
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
                        lea              rax, [rip + n616_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n616_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n626_lit_integer_α
n616_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n616_match_sequence_β:
                                                                                        jmp   n618_match_rpos_β
n616_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n618_match_rpos_α
n617_lit_integer_β:
                                                                                        jmp   n619_match_arbno_β
.Lx630_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n618_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n619_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n618_match_rpos_β:
                                                                                        jmp   n619_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n619_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n617_lit_integer_α
n619_match_arbno_β:
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
                                                                                        jmp   n620_match_sequence_α
n619_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n620_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n617_lit_integer_α
n619_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx633_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n620_match_sequence_β
.Lx633_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n627_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n620_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n625_match_patref_α
n620_match_sequence_as:
                                                                                        jmp   n619_match_arbno_as
n620_match_sequence_β:
                                                                                        jmp   n623_match_assign_cond_β
n620_match_sequence_af:
                                                                                        jmp   n619_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n621_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n622_match_patref_α
n621_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n624_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n622_match_patref_α:
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx638_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx638_4]
                        lea              rdx, [rip + .Lx638_5]
                                                                                        jmp   rax
.Lx638_4:
                                                                                        jmp   n623_match_assign_cond_α
.Lx638_5:
                                                                                        jmp   n621_match_assign_save_β
.Lx638_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx638_2:
                        test             rax, rax
                                                                                        je    .Lx638_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx638_7]
                        lea              rdx, [rip + .Lx638_8]
                                                                                        jmp   rax
.Lx638_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx638_2
.Lx638_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx638_2
.Lx638_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n621_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx638_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n623_match_assign_cond_α
.Lx638_6:
                        add              rsp, 16
                                                                                        jmp   n621_match_assign_save_β
n622_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n623_match_assign_cond_α:
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
                                                                                        jmp   n619_match_arbno_as
n623_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n622_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n624_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]                    # eol
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 8
                                                                                        jne   .Lx641_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx641_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx641_10
.Lx641_9:
                        xor              eax, eax
.Lx641_10:
                        test             rax, rax
                                                                                        jz    .Lx641_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx641_4]
                        lea              rdx, [rip + .Lx641_5]
                                                                                        jmp   rax
.Lx641_4:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n621_match_assign_save_α
.Lx641_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n625_match_patref_β
.Lx641_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx641_2:
                        test             rax, rax
                                                                                        je    .Lx641_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx641_7]
                        lea              rdx, [rip + .Lx641_8]
                                                                                        jmp   rax
.Lx641_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx641_2
.Lx641_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx641_2
.Lx641_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n625_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx641_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n621_match_assign_save_α
.Lx641_6:
                        add              rsp, 16
                                                                                        jmp   n625_match_patref_β
n624_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n625_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n625_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx642_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx642_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx642_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx642_10
.Lx642_9:
                        xor              eax, eax
.Lx642_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx642_11:
                        test             rax, rax
                                                                                        jz    .Lx642_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx642_4]
                        lea              rdx, [rip + .Lx642_5]
                                                                                        jmp   rax
.Lx642_4:
                                                                                        jmp   n624_match_patref_α
.Lx642_5:
                                                                                        jmp   n619_match_arbno_af
.Lx642_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx642_2:
                        test             rax, rax
                                                                                        je    .Lx642_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx642_7]
                        lea              rdx, [rip + .Lx642_8]
                                                                                        jmp   rax
.Lx642_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx642_2
.Lx642_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx642_2
.Lx642_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n619_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx642_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n624_match_patref_α
.Lx642_6:
                        add              rsp, 16
                                                                                        jmp   n619_match_arbno_af
n625_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n627_match_pos_α
n626_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx643_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n627_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n619_match_arbno_α
n627_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx645_0
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx645_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx646_0
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx646_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx646_0
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx646_0:
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
#         DEFINE('PSH()')                         :(PSH_x)
#         DEFINE('DRF(nm)')                       :(DRF_x)
#         DEFINE('ADD()p1')                       :(ADD_x)
#         DEFINE('SUB()p1')                       :(SUB_x)
#         DEFINE('MUL()p1')                       :(MUL_x)
#         DEFINE('DIV()p1')                       :(DIV_x)
#         DEFINE('NEG()')                         :(NEG_x)
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n648_call_α
n647_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n650_keyword_snobol4_α
.Lx931_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n648_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd933:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd933]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx932_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n650_keyword_snobol4_α
.Lx932_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n649_assign_α
n648_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n650_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n649_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 32
                                                                                        jmp   n650_keyword_snobol4_α
n649_assign_β:
                        add              rsp, 32
                                                                                        jmp   n650_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n650_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx935_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n651_assign_α
n650_keyword_snobol4_β:
                        add              rsp, 16
                                                                                        jmp   n652_lit_string_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n651_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # LCASE
                        mov              qword ptr [1879052520], rdx
                        add              rsp, 16
                                                                                        jmp   n652_lit_string_α
n651_assign_β:
                        add              rsp, 16
                                                                                        jmp   n652_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n653_assign_α
n652_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n654_lit_string_α
.Lx937_0:
                        .quad            .Lx937_0_s
.Lx937_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n653_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # DIGITS
                        mov              qword ptr [1879052536], rdx
                        add              rsp, 16
                                                                                        jmp   n654_lit_string_α
n653_assign_β:
                        add              rsp, 16
                                                                                        jmp   n654_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n655_call_α
n654_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n657_lit_string_α
.Lx939_0:
                        .quad            .Lx939_0_s
.Lx939_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n655_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd941:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd941]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx940_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n657_lit_string_α
.Lx940_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n656_assign_α
n655_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n657_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n656_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # V
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 32
                                                                                        jmp   n657_lit_string_α
n656_assign_β:
                        add              rsp, 32
                                                                                        jmp   n657_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n658_call_α
n657_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n660_lit_string_α
.Lx943_0:
                        .quad            .Lx943_0_s
.Lx943_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd945:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd945]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx944_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n660_lit_string_α
.Lx944_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n659_assign_α
n658_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n660_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n659_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # I
                        mov              qword ptr [1879052568], rdx
                        add              rsp, 32
                                                                                        jmp   n660_lit_string_α
n659_assign_β:
                        add              rsp, 32
                                                                                        jmp   n660_lit_string_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n661_call_α
n660_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n663_lit_string_α
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n661_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd949:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd949]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx948_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n663_lit_string_α
.Lx948_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n662_assign_α
n661_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n663_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n662_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # A
                        mov              qword ptr [1879052584], rdx
                        add              rsp, 32
                                                                                        jmp   n663_lit_string_α
n662_assign_β:
                        add              rsp, 32
                                                                                        jmp   n663_lit_string_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n664_call_α
n663_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n666_lit_string_α
.Lx951_0:
                        .quad            .Lx951_0_s
.Lx951_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd953:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd953]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx952_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n666_lit_string_α
.Lx952_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n665_assign_α
n664_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n666_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n665_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # F
                        mov              qword ptr [1879052600], rdx
                        add              rsp, 32
                                                                                        jmp   n666_lit_string_α
n665_assign_β:
                        add              rsp, 32
                                                                                        jmp   n666_lit_string_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n667_call_α
n666_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n669_lit_string_α
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n667_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd957:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd957]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx956_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n669_lit_string_α
.Lx956_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n668_assign_α
n667_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n669_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n668_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # T
                        mov              qword ptr [1879052616], rdx
                        add              rsp, 32
                                                                                        jmp   n669_lit_string_α
n668_assign_β:
                        add              rsp, 32
                                                                                        jmp   n669_lit_string_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n670_call_α
n669_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n672_lit_string_α
.Lx959_0:
                        .quad            .Lx959_0_s
.Lx959_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n670_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd961:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd961]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx960_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n672_lit_string_α
.Lx960_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n671_assign_α
n670_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n671_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # X
                        mov              qword ptr [1879052632], rdx
                        add              rsp, 32
                                                                                        jmp   n672_lit_string_α
n671_assign_β:
                        add              rsp, 32
                                                                                        jmp   n672_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n673_call_α
n672_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n675_lit_string_α
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n673_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd965:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd965]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx964_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n675_lit_string_α
.Lx964_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n674_assign_α
n673_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n675_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n674_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # eol
                        mov              qword ptr [1879052648], rdx
                        add              rsp, 32
                                                                                        jmp   n675_lit_string_α
n674_assign_β:
                        add              rsp, 32
                                                                                        jmp   n675_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n676_call_α
n675_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n678_lit_string_α
.Lx967_0:
                        .quad            .Lx967_0_s
.Lx967_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n676_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd969:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd969]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx968_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n678_lit_string_α
.Lx968_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n677_assign_α
n676_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n678_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n677_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # C
                        mov              qword ptr [1879052664], rdx
                        add              rsp, 32
                                                                                        jmp   n678_lit_string_α
n677_assign_β:
                        add              rsp, 32
                                                                                        jmp   n678_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n679_lit_integer_α
n678_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n681_lit_integer_α
.Lx971_0:
                        .quad            .Lx971_0_s
.Lx971_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n680_call_α
n679_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n681_lit_integer_α
.Lx972_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n680_call_α:
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
.Lrkfnzd974:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd974]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx973_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n681_lit_integer_α
.Lx973_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n681_lit_integer_α
n680_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n681_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n682_call_α
n681_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n684_call_α
.Lx975_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd275:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd275]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx976_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n684_call_α
.Lx976_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n683_assign_α
n682_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n684_call_α
#-----------------------------------------------------------------------------------------------------------------------
n683_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax                    # nl
                        mov              qword ptr [1879052680], rdx
                        add              rsp, 32
                                                                                        jmp   n684_call_α
n683_assign_β:
                        add              rsp, 32
                                                                                        jmp   n684_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd979:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd979]                       # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx978_240
                        add              rsp, 16
                                                                                        jmp   n686_var_α
.Lx978_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n685_assign_α
n684_call_β:
                        add              rsp, 16
                                                                                        jmp   n686_var_α
#-----------------------------------------------------------------------------------------------------------------------
n685_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # vars
                        mov              qword ptr [1879052504], rdx
                        add              rsp, 16
                                                                                        jmp   n686_var_α
n685_assign_β:
                        add              rsp, 16
                                                                                        jmp   n686_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n686_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n687_lit_string_α
n686_var_β:
                        add              rsp, 16
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n688_subscript_α
n687_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n691_var_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n688_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx983_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n691_var_α
.Lx983_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n689_lit_integer_α
n688_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx984_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n690_assign_var_α
n689_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n691_var_α
.Lx984_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n690_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx985_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n691_var_α
.Lx985_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n691_var_α
n690_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n691_var_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n692_lit_string_α
n691_var_β:
                        add              rsp, 16
                                                                                        jmp   n696_var_α
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx987_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n693_subscript_α
n692_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n696_var_α
.Lx987_0:
                        .quad            .Lx987_0_s
.Lx987_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n693_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx988_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n696_var_α
.Lx988_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n694_lit_integer_α
n693_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n696_var_α
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n695_assign_var_α
n694_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n696_var_α
.Lx989_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n695_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx990_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n696_var_α
.Lx990_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n696_var_α
n695_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n696_var_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n696_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n697_lit_string_α
n696_var_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n698_subscript_α
n697_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n701_var_α
.Lx992_0:
                        .quad            .Lx992_0_s
.Lx992_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n698_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx993_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n701_var_α
.Lx993_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n699_lit_integer_α
n698_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n700_assign_var_α
n699_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n701_var_α
.Lx994_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n700_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx995_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n701_var_α
.Lx995_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n701_var_α
n700_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n701_var_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n701_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx996_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx996_240
                        add              rsp, 16
                                                                                        jmp   n733_var_α
.Lx996_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n702_assign_α
n701_var_β:
                        add              rsp, 16
                                                                                        jmp   n733_var_α
.Lx996_0:
                        .quad            .Lx996_0_s
.Lx996_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n702_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # line
                        mov              qword ptr [1879052696], rdx
                        add              rsp, 16
                                                                                        jmp   n703_var_α
n702_assign_β:
                        add              rsp, 16
                                                                                        jmp   n733_var_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n703_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n704_var_α
n703_var_β:
                        add              rsp, 16
                                                                                        jmp   n709_var_α
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]                    # line
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n705_binop_α
n704_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n709_var_α
#-----------------------------------------------------------------------------------------------------------------------
n705_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n706_var_α
n705_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n709_var_α
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]                    # nl
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n707_binop_α
n706_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n709_var_α
#-----------------------------------------------------------------------------------------------------------------------
n707_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n708_assign_α
n707_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n709_var_α
#-----------------------------------------------------------------------------------------------------------------------
n708_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 80
                                                                                        jmp   n709_var_α
n708_assign_β:
                        add              rsp, 80
                                                                                        jmp   n709_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n709_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n710_call_α
n709_var_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n710_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1006:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1006]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1005_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n701_var_α
.Lx1005_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n711_lit_integer_α
n710_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n712_coerce_numeric_α
n711_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n701_var_α
.Lx1007_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n712_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1009_1
                        cmp              eax, 3
                                                                                        jne   .Lx1009_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1009_0
.Lx1009_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n713_coerce_numeric_α
.Lx1009_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n713_coerce_numeric_α
n712_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n713_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1011_1
                        cmp              eax, 3
                                                                                        jne   .Lx1011_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1011_0
.Lx1011_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n714_cmp_test_α
.Lx1011_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n714_cmp_test_α
n713_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n714_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1013_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n701_var_α
.Lx1013_240:
                        add              rsp, 96
                                                                                        jmp   n715_var_α
n714_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n701_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n716_var_α
n715_var_β:
                        add              rsp, 16
                                                                                        jmp   n719_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n716_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n717_binop_α
n716_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n719_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n717_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n718_assign_α
n717_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n719_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n718_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 48
                                                                                        jmp   n719_lit_string_α
n718_assign_β:
                        add              rsp, 48
                                                                                        jmp   n719_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n720_assign_α
n719_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n721_var_α
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n720_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 16
                                                                                        jmp   n721_var_α
n720_assign_β:
                        add              rsp, 16
                                                                                        jmp   n721_var_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n721_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n722_call_α
n721_var_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n722_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1022:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1022]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1021_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n701_var_α
.Lx1021_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n723_lit_integer_α
n722_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n724_coerce_numeric_α
n723_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n701_var_α
.Lx1023_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n724_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1025_1
                        cmp              eax, 3
                                                                                        jne   .Lx1025_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1025_0
.Lx1025_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n725_coerce_numeric_α
.Lx1025_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n725_coerce_numeric_α
n724_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n725_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1027_1
                        cmp              eax, 3
                                                                                        jne   .Lx1027_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1027_0
.Lx1027_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n726_cmp_test_α
.Lx1027_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n726_cmp_test_α
n725_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n726_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1029_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n701_var_α
.Lx1029_240:
                        add              rsp, 96
                                                                                        jmp   n727_var_α
n726_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n701_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n727_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n728_var_α
n727_var_β:
                        add              rsp, 16
                                                                                        jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n729_binop_α
n728_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n729_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n730_assign_α
n729_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n730_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 48
                                                                                        jmp   n731_lit_string_α
n730_assign_β:
                        add              rsp, 48
                                                                                        jmp   n731_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n732_assign_α
n731_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n732_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 16
                                                                                        jmp   n701_var_α
n732_assign_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n734_var_α
n733_var_β:
                        add              rsp, 16
                                                                                        jmp   n739_call_α
#-----------------------------------------------------------------------------------------------------------------------
n734_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n735_binop_α
n734_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n739_call_α
#-----------------------------------------------------------------------------------------------------------------------
n735_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n736_var_α
n735_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n739_call_α
#-----------------------------------------------------------------------------------------------------------------------
n736_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n737_binop_α
n736_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n739_call_α
#-----------------------------------------------------------------------------------------------------------------------
n737_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n738_assign_α
n737_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n739_call_α
#-----------------------------------------------------------------------------------------------------------------------
n738_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 80
                                                                                        jmp   n739_call_α
n738_assign_β:
                        add              rsp, 80
                                                                                        jmp   n739_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n739_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1043:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1043]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1042_240
                        add              rsp, 16
                                                                                        jmp   n741_var_α
.Lx1042_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n740_assign_α
n739_call_β:
                        add              rsp, 16
                                                                                        jmp   n741_var_α
#-----------------------------------------------------------------------------------------------------------------------
n740_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # t0
                        mov              qword ptr [1879052760], rdx
                        add              rsp, 16
                                                                                        jmp   n741_var_α
n740_assign_β:
                        add              rsp, 16
                                                                                        jmp   n741_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n741_var_α:
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
                                                                                        jmp   n742_match_begin_α
n741_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n753_call_α
#-----------------------------------------------------------------------------------------------------------------------
n742_match_begin_α:
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
.Lx1047_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n743_match_patref_α
n742_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx1047_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1047_1
                                                                                        jmp   .Lx1047_0
.Lx1047_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx1047_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1047_2
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
                                                                                        jmp   n753_call_α
#-----------------------------------------------------------------------------------------------------------------------
n743_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1048_11
                        mov              rax, qword ptr [1879052656]                    # C
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 8
                                                                                        jne   .Lx1048_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1048_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1048_10
.Lx1048_9:
                        xor              eax, eax
.Lx1048_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx1048_11:
                        test             rax, rax
                                                                                        jz    .Lx1048_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1048_4]
                        lea              rdx, [rip + .Lx1048_5]
                                                                                        jmp   rax
.Lx1048_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n744_match_end_α
.Lx1048_5:
                                                                                        jmp   n742_match_begin_β
.Lx1048_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1048_2:
                        test             rax, rax
                                                                                        je    .Lx1048_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1048_7]
                        lea              rdx, [rip + .Lx1048_8]
                                                                                        jmp   rax
.Lx1048_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1048_2
.Lx1048_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1048_2
.Lx1048_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n742_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1048_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n744_match_end_α
.Lx1048_6:
                        add              rsp, 16
                                                                                        jmp   n742_match_begin_β
n743_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n744_match_end_α:
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
.Lx1050_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1050_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1050_1:
                        test             rax, rax
                                                                                        je    .Lx1050_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1050_3]
                        lea              rdx, [rip + .Lx1050_4]
                                                                                        jmp   rax
.Lx1050_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1050_1
.Lx1050_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1050_1
.Lx1050_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1050_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1050_6
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
                                                                                        jmp   n745_call_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1052:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1052]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1051_240
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
.Lx1051_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n746_assign_α
n745_call_β:
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
n746_assign_β:
                        add              rsp, 16
                                                                                        jmp   n747_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1054_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n748_var_α
n747_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n748_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n749_var_α
n748_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n749_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n750_binop_α
n749_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n750_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1057_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1057_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n751_binop_α
n750_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n751_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n752_assign_α
n751_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n752_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1059_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n752_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1059_0:
                        .quad            .Lx1059_0_s
.Lx1059_0_s:
                        .string          "TERMINAL"
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n753_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1061:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1061]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1060_240
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
.Lx1060_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n754_assign_α
n753_call_β:
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n754_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
n754_assign_β:
                        add              rsp, 16
                                                                                        jmp   n755_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1063_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n756_assign_α
n755_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n757_lit_string_α
.Lx1063_0:
                        .quad            .Lx1063_0_s
.Lx1063_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n756_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1064_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n757_lit_string_α
n756_assign_β:
                        add              rsp, 16
                                                                                        jmp   n757_lit_string_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n758_var_α
n757_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n758_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n759_var_α
n758_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n759_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n760_binop_α
n759_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n760_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1068_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1068_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n761_binop_α
n760_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n761_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n762_assign_α
n761_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n762_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1070_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n762_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1070_0:
                        .quad            .Lx1070_0_s
.Lx1070_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n763_goto_α:
                                                                                        jmp   n764_var_α
n763_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n764_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n765_lit_integer_α
n764_var_β:
                        add              rsp, 16
                                                                                        jmp   n770_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n766_subscript_α
n765_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n770_lit_integer_α
.Lx1073_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n766_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1074_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n770_lit_integer_α
.Lx1074_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n767_deref_α
n766_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n770_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n767_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1075_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n770_lit_integer_α
.Lx1075_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n768_call_α
n767_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n770_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n768_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1077_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1077_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1077_6]
                        lea              rdx, [rip + .Lx1077_7]
                                                                                        jmp   rax
.Lx1077_6:
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
                                                                                        jmp   .Lx1077_2
.Lx1077_7:
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
                                                                                        jmp   .Lx1077_2
.Lx1077_5:
                        add              rsp, 32
.Lx1077_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1077_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n770_lit_integer_α
.Lx1077_240:
                                                                                        jmp   n769_assign_α
n768_call_β:
                                                                                        jmp   n770_lit_integer_α
.Lx1077_0:
                        .quad            .Lx1077_0_s
.Lx1077_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n769_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1078_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   n770_lit_integer_α
n769_assign_β:
                        add              rsp, 80
                                                                                        jmp   n770_lit_integer_α
.Lx1078_0:
                        .quad            .Lx1078_0_s
.Lx1078_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n771_assign_α
n770_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n772_lit_string_α
.Lx1079_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n771_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n772_lit_string_α
n771_assign_β:
                        add              rsp, 16
                                                                                        jmp   n772_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n773_call_α
n772_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1081_0:
                        .quad            .Lx1081_0_s
.Lx1081_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n773_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1083:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1083]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1082_240
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1082_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n774_assign_α
n773_call_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n774_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n775_lit_string_α
n774_assign_β:
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1085_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n776_call_α
n775_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n778_save_restore_α
.Lx1085_0:
                        .quad            .Lx1085_0_s
.Lx1085_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n776_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1087:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1087]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1086_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n778_save_restore_α
.Lx1086_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n777_save_restore_α
n776_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n778_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n777_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n778_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n779_goto_α:
                                                                                        jmp   n647_lit_integer_α
n779_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n780_goto_α:
                                                                                        jmp   n781_var_α
n780_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n781_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n782_lit_integer_α
n781_var_β:
                        add              rsp, 16
                                                                                        jmp   n785_var_α
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1095_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n783_binop_α
n782_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n785_var_α
.Lx1095_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n783_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1096_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n785_var_α
.Lx1096_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n784_assign_α
n783_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n785_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n785_var_α
n784_assign_β:
                        add              rsp, 48
                                                                                        jmp   n785_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n785_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n786_var_α
n785_var_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n787_subscript_α
n786_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n787_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1100_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
.Lx1100_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n788_assign_α
n787_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n788_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n775_lit_string_α
n788_assign_β:
                        add              rsp, 48
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n789_goto_α:
                                                                                        jmp   n647_lit_integer_α
n789_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n790_goto_α:
                                                                                        jmp   n791_var_α
n790_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n791_var_α:
                        sub              rsp, 464
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
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n792_match_begin_α
n791_var_β:
                        add              rsp, 16
                        add              rsp, 464
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n792_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
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
.Lx1106_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n793_match_sequence_α
n792_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1106_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1106_1
                                                                                        jmp   .Lx1106_0
.Lx1106_1:
                        mov              r10, qword ptr [1879048192]
.Lx1106_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1106_2
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
                                                                                        jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n793_match_sequence_α:
                                                                                        jmp   n803_lit_integer_α
n793_match_sequence_as:
                                                                                        jmp   n794_match_end_α
n793_match_sequence_β:
                                                                                        jmp   n801_match_rpos_β
n793_match_sequence_af:
                                                                                        jmp   n792_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n794_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1110_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1110_9
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
.Lx1110_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1110_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1110_1:
                        test             rax, rax
                                                                                        je    .Lx1110_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1110_3]
                        lea              rdx, [rip + .Lx1110_4]
                                                                                        jmp   rax
.Lx1110_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1110_1
.Lx1110_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1110_1
.Lx1110_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1110_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1110_6
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
                                                                                        jmp   n795_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n796_var_α
n795_var_β:
                        add              rsp, 16
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n797_subscript_α
n796_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n797_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1113_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n777_save_restore_α
.Lx1113_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n798_deref_α
n797_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n798_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1114_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n777_save_restore_α
.Lx1114_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n799_assign_α
n798_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n799_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 64
                                                                                        jmp   n777_save_restore_α
n799_assign_β:
                        add              rsp, 64
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1116_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n801_match_rpos_α
n800_lit_integer_β:
                                                                                        jmp   n802_match_any_β
.Lx1116_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n801_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n802_match_any_β
                                                                                        jmp   n794_match_end_α
n801_match_rpos_β:
                                                                                        jmp   n802_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n802_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n792_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n792_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n800_lit_integer_α
n802_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n792_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n804_match_pos_α
n803_lit_integer_β:
                                                                                        jmp   n792_match_begin_β
.Lx1120_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n804_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n792_match_begin_β
                                                                                        jmp   n802_match_any_α
n804_match_pos_β:
                                                                                        jmp   n792_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n806_assign_α
n805_var_β:
                        add              rsp, 16
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n806_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n777_save_restore_α
n806_assign_β:
                        add              rsp, 16
                                                                                        jmp   n777_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n807_goto_α:
                                                                                        jmp   n805_var_α
n807_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n808_goto_α:
                                                                                        jmp   n647_lit_integer_α
n808_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n809_goto_α:
                                                                                        jmp   n810_var_α
n809_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n810_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n811_var_α
n810_var_β:
                        add              rsp, 16
                                                                                        jmp   n816_var_α
#-----------------------------------------------------------------------------------------------------------------------
n811_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n812_subscript_α
n811_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n816_var_α
#-----------------------------------------------------------------------------------------------------------------------
n812_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1129_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n816_var_α
.Lx1129_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n813_deref_α
n812_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n816_var_α
#-----------------------------------------------------------------------------------------------------------------------
n813_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1130_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n816_var_α
.Lx1130_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n814_call_α
n813_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n816_var_α
#-----------------------------------------------------------------------------------------------------------------------
n814_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1132_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1132_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1132_6]
                        lea              rdx, [rip + .Lx1132_7]
                                                                                        jmp   rax
.Lx1132_6:
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
                                                                                        jmp   .Lx1132_2
.Lx1132_7:
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
                                                                                        jmp   .Lx1132_2
.Lx1132_5:
                        add              rsp, 32
.Lx1132_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1132_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n816_var_α
.Lx1132_240:
                                                                                        jmp   n815_assign_α
n814_call_β:
                                                                                        jmp   n816_var_α
.Lx1132_0:
                        .quad            .Lx1132_0_s
.Lx1132_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n815_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n816_var_α
n815_assign_β:
                        add              rsp, 80
                                                                                        jmp   n816_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n816_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n817_lit_integer_α
n816_var_β:
                        add              rsp, 16
                                                                                        jmp   n820_var_α
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n818_binop_α
n817_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n820_var_α
.Lx1135_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n818_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1136_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n820_var_α
.Lx1136_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n819_assign_α
n818_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n820_var_α
#-----------------------------------------------------------------------------------------------------------------------
n819_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n820_var_α
n819_assign_β:
                        add              rsp, 48
                                                                                        jmp   n820_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n820_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n821_var_α
n820_var_β:
                        add              rsp, 16
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n821_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n822_subscript_α
n821_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n822_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1140_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n831_lit_string_α
.Lx1140_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n823_var_α
n822_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n823_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n824_var_α
n823_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n824_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n825_subscript_α
n824_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n825_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1143_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n831_lit_string_α
.Lx1143_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n826_deref_α
n825_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n826_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1144_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n831_lit_string_α
.Lx1144_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n827_call_α
n826_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n827_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1146_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1146_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1146_6]
                        lea              rdx, [rip + .Lx1146_7]
                                                                                        jmp   rax
.Lx1146_6:
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
                                                                                        jmp   .Lx1146_2
.Lx1146_7:
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
                                                                                        jmp   .Lx1146_2
.Lx1146_5:
                        add              rsp, 32
.Lx1146_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1146_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n831_lit_string_α
.Lx1146_240:
                                                                                        jmp   n828_var_α
n827_call_β:
                                                                                        jmp   n831_lit_string_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n828_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n829_binop_α
n828_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n829_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1148_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n831_lit_string_α
.Lx1148_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n830_assign_var_α
n829_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1149_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n831_lit_string_α
.Lx1149_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n831_lit_string_α
n830_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n831_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n831_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n832_call_α
n831_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1150_0:
                        .quad            .Lx1150_0_s
.Lx1150_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n832_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1152:           .string          "SNO$NAME"
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
                                                                                        jmp   n775_lit_string_α
.Lx1151_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n833_assign_α
n832_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
n833_assign_β:
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_goto_α:
                                                                                        jmp   n647_lit_integer_α
n834_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n835_goto_α:
                                                                                        jmp   n836_var_α
n835_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n837_var_α
n836_var_β:
                        add              rsp, 16
                                                                                        jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n838_subscript_α
n837_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n838_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1158_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n842_var_α
.Lx1158_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n839_deref_α
n838_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n839_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1159_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n842_var_α
.Lx1159_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n840_call_α
n839_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n840_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1161_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1161_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1161_6]
                        lea              rdx, [rip + .Lx1161_7]
                                                                                        jmp   rax
.Lx1161_6:
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
                                                                                        jmp   .Lx1161_2
.Lx1161_7:
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
                                                                                        jmp   .Lx1161_2
.Lx1161_5:
                        add              rsp, 32
.Lx1161_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1161_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n842_var_α
.Lx1161_240:
                                                                                        jmp   n841_assign_α
n840_call_β:
                                                                                        jmp   n842_var_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n841_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n842_var_α
n841_assign_β:
                        add              rsp, 80
                                                                                        jmp   n842_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n843_lit_integer_α
n842_var_β:
                        add              rsp, 16
                                                                                        jmp   n846_var_α
#-----------------------------------------------------------------------------------------------------------------------
n843_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n844_binop_α
n843_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n846_var_α
.Lx1164_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n844_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1165_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n846_var_α
.Lx1165_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n845_assign_α
n844_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n846_var_α
#-----------------------------------------------------------------------------------------------------------------------
n845_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n846_var_α
n845_assign_β:
                        add              rsp, 48
                                                                                        jmp   n846_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n847_var_α
n846_var_β:
                        add              rsp, 16
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n848_subscript_α
n847_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n848_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1169_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n857_lit_string_α
.Lx1169_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n849_var_α
n848_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n849_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n850_var_α
n849_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n851_subscript_α
n850_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n851_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1172_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n857_lit_string_α
.Lx1172_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n852_deref_α
n851_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n852_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1173_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n857_lit_string_α
.Lx1173_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n853_call_α
n852_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n853_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1175_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1175_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1175_6]
                        lea              rdx, [rip + .Lx1175_7]
                                                                                        jmp   rax
.Lx1175_6:
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
                                                                                        jmp   .Lx1175_2
.Lx1175_7:
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
                                                                                        jmp   .Lx1175_2
.Lx1175_5:
                        add              rsp, 32
.Lx1175_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1175_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n857_lit_string_α
.Lx1175_240:
                                                                                        jmp   n854_var_α
n853_call_β:
                                                                                        jmp   n857_lit_string_α
.Lx1175_0:
                        .quad            .Lx1175_0_s
.Lx1175_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n855_binop_α
n854_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n855_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1177_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n857_lit_string_α
.Lx1177_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_assign_var_α
n855_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n857_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n856_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1178_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n857_lit_string_α
.Lx1178_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n857_lit_string_α
n856_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n857_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n858_call_α
n857_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1179_0:
                        .quad            .Lx1179_0_s
.Lx1179_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n858_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1181:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1181]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1180_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1180_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n859_assign_α
n858_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n859_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
n859_assign_β:
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n860_goto_α:
                                                                                        jmp   n647_lit_integer_α
n860_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n861_goto_α:
                                                                                        jmp   n862_var_α
n861_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n862_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n863_var_α
n862_var_β:
                        add              rsp, 16
                                                                                        jmp   n868_var_α
#-----------------------------------------------------------------------------------------------------------------------
n863_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n864_subscript_α
n863_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n868_var_α
#-----------------------------------------------------------------------------------------------------------------------
n864_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1187_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n868_var_α
.Lx1187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n865_deref_α
n864_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n868_var_α
#-----------------------------------------------------------------------------------------------------------------------
n865_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1188_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n868_var_α
.Lx1188_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n866_call_α
n865_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n868_var_α
#-----------------------------------------------------------------------------------------------------------------------
n866_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1190_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1190_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1190_6]
                        lea              rdx, [rip + .Lx1190_7]
                                                                                        jmp   rax
.Lx1190_6:
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
                                                                                        jmp   .Lx1190_2
.Lx1190_7:
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
                                                                                        jmp   .Lx1190_2
.Lx1190_5:
                        add              rsp, 32
.Lx1190_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1190_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n868_var_α
.Lx1190_240:
                                                                                        jmp   n867_assign_α
n866_call_β:
                                                                                        jmp   n868_var_α
.Lx1190_0:
                        .quad            .Lx1190_0_s
.Lx1190_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n867_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n868_var_α
n867_assign_β:
                        add              rsp, 80
                                                                                        jmp   n868_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n868_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n869_lit_integer_α
n868_var_β:
                        add              rsp, 16
                                                                                        jmp   n872_var_α
#-----------------------------------------------------------------------------------------------------------------------
n869_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n870_binop_α
n869_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n872_var_α
.Lx1193_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n870_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1194_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n872_var_α
.Lx1194_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n871_assign_α
n870_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n872_var_α
#-----------------------------------------------------------------------------------------------------------------------
n871_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n872_var_α
n871_assign_β:
                        add              rsp, 48
                                                                                        jmp   n872_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n872_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n873_var_α
n872_var_β:
                        add              rsp, 16
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n874_subscript_α
n873_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n874_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1198_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n883_lit_string_α
.Lx1198_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n875_var_α
n874_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n875_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n876_var_α
n875_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n876_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n877_subscript_α
n876_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n877_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1201_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n883_lit_string_α
.Lx1201_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n878_deref_α
n877_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n878_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1202_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n883_lit_string_α
.Lx1202_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n879_call_α
n878_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n883_lit_string_α
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
                        mov              rdi, qword ptr [rip + .Lx1204_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1204_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1204_6]
                        lea              rdx, [rip + .Lx1204_7]
                                                                                        jmp   rax
.Lx1204_6:
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
                                                                                        jmp   .Lx1204_2
.Lx1204_7:
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
                                                                                        jmp   .Lx1204_2
.Lx1204_5:
                        add              rsp, 32
.Lx1204_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1204_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n883_lit_string_α
.Lx1204_240:
                                                                                        jmp   n880_var_α
n879_call_β:
                                                                                        jmp   n883_lit_string_α
.Lx1204_0:
                        .quad            .Lx1204_0_s
.Lx1204_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n880_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n881_binop_α
n880_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n881_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1206_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n883_lit_string_α
.Lx1206_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n882_assign_var_α
n881_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n883_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n882_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1207_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n883_lit_string_α
.Lx1207_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n883_lit_string_α
n882_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n883_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n884_call_α
n883_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1208_0:
                        .quad            .Lx1208_0_s
.Lx1208_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n884_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1210:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1210]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1209_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1209_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n885_assign_α
n884_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
n885_assign_β:
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_goto_α:
                                                                                        jmp   n647_lit_integer_α
n886_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n887_goto_α:
                                                                                        jmp   n888_var_α
n887_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n888_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n889_var_α
n888_var_β:
                        add              rsp, 16
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n890_subscript_α
n889_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n890_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1216_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n894_var_α
.Lx1216_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n891_deref_α
n890_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n891_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1217_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n894_var_α
.Lx1217_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_call_α
n891_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n892_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1219_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1219_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1219_6]
                        lea              rdx, [rip + .Lx1219_7]
                                                                                        jmp   rax
.Lx1219_6:
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
                                                                                        jmp   .Lx1219_2
.Lx1219_7:
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
                                                                                        jmp   .Lx1219_2
.Lx1219_5:
                        add              rsp, 32
.Lx1219_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1219_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n894_var_α
.Lx1219_240:
                                                                                        jmp   n893_assign_α
n892_call_β:
                                                                                        jmp   n894_var_α
.Lx1219_0:
                        .quad            .Lx1219_0_s
.Lx1219_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n894_var_α
n893_assign_β:
                        add              rsp, 80
                                                                                        jmp   n894_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n894_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n895_lit_integer_α
n894_var_β:
                        add              rsp, 16
                                                                                        jmp   n898_var_α
#-----------------------------------------------------------------------------------------------------------------------
n895_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1222_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n896_binop_α
n895_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n898_var_α
.Lx1222_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n896_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1223_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n898_var_α
.Lx1223_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n897_assign_α
n896_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n898_var_α
#-----------------------------------------------------------------------------------------------------------------------
n897_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n898_var_α
n897_assign_β:
                        add              rsp, 48
                                                                                        jmp   n898_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n898_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n899_var_α
n898_var_β:
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n900_subscript_α
n899_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n900_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1227_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n909_lit_string_α
.Lx1227_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_var_α
n900_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n901_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n902_var_α
n901_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n903_subscript_α
n902_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n903_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1230_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n909_lit_string_α
.Lx1230_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n904_deref_α
n903_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1231_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n909_lit_string_α
.Lx1231_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n905_call_α
n904_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1233_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1233_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1233_6]
                        lea              rdx, [rip + .Lx1233_7]
                                                                                        jmp   rax
.Lx1233_6:
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
                                                                                        jmp   .Lx1233_2
.Lx1233_7:
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
                                                                                        jmp   .Lx1233_2
.Lx1233_5:
                        add              rsp, 32
.Lx1233_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1233_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n909_lit_string_α
.Lx1233_240:
                                                                                        jmp   n906_var_α
n905_call_β:
                                                                                        jmp   n909_lit_string_α
.Lx1233_0:
                        .quad            .Lx1233_0_s
.Lx1233_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n906_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n907_binop_α
n906_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1235_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n909_lit_string_α
.Lx1235_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_assign_var_α
n907_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n909_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n908_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1236_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n909_lit_string_α
.Lx1236_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n909_lit_string_α
n908_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n909_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n909_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n910_call_α
n909_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1237_0:
                        .quad            .Lx1237_0_s
.Lx1237_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n910_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1239:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1239]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1238_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1238_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n911_assign_α
n910_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n911_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
n911_assign_β:
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n912_goto_α:
                                                                                        jmp   n647_lit_integer_α
n912_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n913_goto_α:
                                                                                        jmp   n914_var_α
n913_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n914_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n915_var_α
n914_var_β:
                        add              rsp, 16
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n915_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n916_subscript_α
n915_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n916_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1245_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n924_lit_string_α
.Lx1245_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_var_α
n916_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n917_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n918_var_α
n917_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n919_subscript_α
n918_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1248_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n924_lit_string_α
.Lx1248_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n920_deref_α
n919_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n920_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1249_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n924_lit_string_α
.Lx1249_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n921_call_α
n920_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n921_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1251_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1251_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1251_6]
                        lea              rdx, [rip + .Lx1251_7]
                                                                                        jmp   rax
.Lx1251_6:
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
                                                                                        jmp   .Lx1251_2
.Lx1251_7:
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
                                                                                        jmp   .Lx1251_2
.Lx1251_5:
                        add              rsp, 32
.Lx1251_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1251_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n924_lit_string_α
.Lx1251_240:
                                                                                        jmp   n922_unop_α
n921_call_β:
                                                                                        jmp   n924_lit_string_α
.Lx1251_0:
                        .quad            .Lx1251_0_s
.Lx1251_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n922_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n923_assign_var_α
n922_unop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n923_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1253_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n924_lit_string_α
.Lx1253_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160
                                                                                        jmp   n924_lit_string_α
n923_assign_var_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n924_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1254_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n925_call_α
n924_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1254_0:
                        .quad            .Lx1254_0_s
.Lx1254_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n925_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1256:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1256]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1255_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
.Lx1255_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n926_assign_α
n925_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n926_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # NEG
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
n926_assign_β:
                        add              rsp, 32
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n927_goto_α:
                                                                                        jmp   n647_lit_integer_α
n927_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n928_goto_α:
                                                                                        jmp   n701_var_α
n928_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n929_goto_α:
                                                                                        jmp   n733_var_α
n929_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n930_goto_α:
                                                                                        jmp   n753_call_α
n930_goto_β:
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
