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
                        .globl           proc_LBL__SGN_α
proc_LBL__SGN_α:
proc_LBL__SGN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n363_goto_α:
                                                                                        jmp   n364_var_α
n363_goto_β:
                                                                                        jmp   proc_LBL__SGN_ω
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
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
                                                                                        jne   .Lx398_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n370_var_α
.Lx398_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n367_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx399_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n370_var_α
.Lx399_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n368_call_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx401_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx401_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_6]
                        lea              rdx, [rip + .Lx401_7]
                                                                                        jmp   rax
.Lx401_6:
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
                                                                                        jmp   .Lx401_2
.Lx401_7:
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
                                                                                        jmp   .Lx401_2
.Lx401_5:
                        add              rsp, 32
.Lx401_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx401_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n370_var_α
.Lx401_240:
                                                                                        jmp   n369_assign_α
n368_call_β:
                                                                                        jmp   n370_var_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n370_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n371_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n372_binop_α
.Lx404_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n372_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx405_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n374_var_α
.Lx405_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n373_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n374_var_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n376_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n376_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx409_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n383_var_α
.Lx409_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n377_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n377_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx410_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n383_var_α
.Lx410_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n379_call_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:
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
.Lrkfnzd413:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd413]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx412_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n383_var_α
.Lx412_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n380_var_α
n379_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n383_var_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n381_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n381_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n382_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 32
                                                                                        jmp   n383_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n385_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx419_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n388_lit_string_α
.Lx419_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n386_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n387_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx421_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n388_lit_string_α
.Lx421_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n388_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n389_call_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:
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
                                                                                        jmp   n391_lit_string_α
.Lx423_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n390_assign_α
n389_call_β:
                        add              rsp, 16
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # SGN
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n392_call_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd428:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd428]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx427_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n394_save_restore_α
.Lx427_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n393_save_restore_α
n392_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n394_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n393_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n394_save_restore_α:
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
n433_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n434_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n434_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx438_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx438_1
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "EMIT"
.Lx438_1:
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
n439_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n440_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n440_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx444_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx444_1
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "PSH"
.Lx444_1:
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
n445_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n446_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n446_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx450_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx450_1
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "DRF"
.Lx450_1:
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
n451_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n452_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n452_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx456_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx456_1
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "ADD"
.Lx456_1:
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
n457_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n458_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n458_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx462_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx462_1
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "SUB"
.Lx462_1:
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
n463_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n464_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n464_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx468_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx468_1
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "MUL"
.Lx468_1:
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
n469_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n470_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n470_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx474_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx474_1
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "DIV"
.Lx474_1:
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
n475_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n476_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n476_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx480_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx480_1
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "SGN"
.Lx480_1:
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
                        lea              rax, [rip + n483_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n481_match_assign_save_α:
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
                                                                                        jmp   n482_match_any_α
n481_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n482_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx487_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx487_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx487_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx487_240:
                        add              r14d, 1
                                                                                        jmp   n483_match_assign_cond_α
n482_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n483_match_assign_cond_α:
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
n483_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n482_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx490_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx490_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx491_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx491_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx491_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx491_0:
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
                        lea              rax, [rip + n494_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n492_match_assign_save_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n493_match_span_α
n492_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n493_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx498_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx498_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx498_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx498_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx498_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx498_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx498_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx498_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx498_1
                        add              ecx, 1
                                                                                        jmp   .Lx498_0
.Lx498_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx498_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx498_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n494_match_assign_cond_α
n493_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n494_match_assign_cond_α:
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
n494_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n493_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx501_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx501_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx502_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx502_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx502_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx502_0:
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
n503_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx511_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n509_match_patref_α
.Lx511_21:
                        lea              rax, [rip + .Lx511_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n508_match_patref_α
.Lx511_22:
                        lea              rax, [rip + .Lx511_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n504_match_sequence_α
n503_match_alternate_s0:
                        lea              rax, [rip + .Lx511_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n503_match_alternate_as
n503_match_alternate_s1:
                        lea              rax, [rip + .Lx511_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n503_match_alternate_as
n503_match_alternate_s2:
                        lea              rax, [rip + .Lx511_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n503_match_alternate_as
.Lx511_40:
                                                                                        jmp   n509_match_patref_β
.Lx511_41:
                                                                                        jmp   n508_match_patref_β
.Lx511_42:
                                                                                        jmp   n504_match_sequence_β
n503_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n503_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n503_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx511_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n504_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n507_match_lit_α
n504_match_sequence_as:
                                                                                        jmp   n503_match_alternate_s2
n504_match_sequence_β:
                                                                                        jmp   n505_match_lit_β
n504_match_sequence_af:
                                                                                        jmp   n503_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n505_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n506_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n506_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n503_match_alternate_s2
n505_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n506_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n506_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx516_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx516_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx516_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx516_10
.Lx516_9:
                        xor              eax, eax
.Lx516_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx516_11:
                        test             rax, rax
                                                                                        jz    .Lx516_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx516_4]
                        lea              rdx, [rip + .Lx516_5]
                                                                                        jmp   rax
.Lx516_4:
                                                                                        jmp   n505_match_lit_α
.Lx516_5:
                                                                                        jmp   n507_match_lit_β
.Lx516_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx516_2:
                        test             rax, rax
                                                                                        je    .Lx516_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx516_7]
                        lea              rdx, [rip + .Lx516_8]
                                                                                        jmp   rax
.Lx516_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx516_2
.Lx516_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx516_2
.Lx516_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n507_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx516_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n505_match_lit_α
.Lx516_6:
                        add              rsp, 16
                                                                                        jmp   n507_match_lit_β
n506_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n507_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n503_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n503_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n506_match_defer_α
n507_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n503_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n508_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx519_11
                        mov              rax, qword ptr [1879052560]                    # I
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx519_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx519_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx519_10
.Lx519_9:
                        xor              eax, eax
.Lx519_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx519_11:
                        test             rax, rax
                                                                                        jz    .Lx519_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx519_4]
                        lea              rdx, [rip + .Lx519_5]
                                                                                        jmp   rax
.Lx519_4:
                                                                                        jmp   n503_match_alternate_s1
.Lx519_5:
                                                                                        jmp   n503_match_alternate_af
.Lx519_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx519_2:
                        test             rax, rax
                                                                                        je    .Lx519_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx519_7]
                        lea              rdx, [rip + .Lx519_8]
                                                                                        jmp   rax
.Lx519_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx519_2
.Lx519_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx519_2
.Lx519_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n503_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx519_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n503_match_alternate_s1
.Lx519_6:
                        add              rsp, 16
                                                                                        jmp   n503_match_alternate_af
n508_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n509_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx520_11
                        mov              rax, qword ptr [1879052544]                    # V
                        mov              rdx, qword ptr [1879052552]
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
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx520_11:
                        test             rax, rax
                                                                                        jz    .Lx520_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx520_4]
                        lea              rdx, [rip + .Lx520_5]
                                                                                        jmp   rax
.Lx520_4:
                                                                                        jmp   n503_match_alternate_s0
.Lx520_5:
                                                                                        jmp   n503_match_alternate_af
.Lx520_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n503_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx520_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n503_match_alternate_s0
.Lx520_6:
                        add              rsp, 16
                                                                                        jmp   n503_match_alternate_af
n509_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx521_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx521_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx522_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx522_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx522_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx522_0:
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
n523_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx533_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n531_match_patref_α
.Lx533_21:
                        lea              rax, [rip + .Lx533_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n524_match_sequence_α
n523_match_alternate_s0:
                        lea              rax, [rip + .Lx533_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n523_match_alternate_as
n523_match_alternate_s1:
                        lea              rax, [rip + .Lx533_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n523_match_alternate_as
.Lx533_40:
                                                                                        jmp   n531_match_patref_β
.Lx533_41:
                                                                                        jmp   n524_match_sequence_β
n523_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n523_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n523_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx533_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n528_match_assign_save_α
n524_match_sequence_as:
                                                                                        jmp   n523_match_alternate_s1
n524_match_sequence_β:
                                                                                        jmp   n527_match_assign_cond_β
n524_match_sequence_af:
                                                                                        jmp   n523_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n525_match_assign_save_α:
                        lea              rdi, [rbp + 176]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n526_match_defer_α
n525_match_assign_save_β:
                        lea              rdi, [rbp + 176]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n530_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n526_match_defer_α:
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx538_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx538_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx538_10
.Lx538_9:
                        xor              eax, eax
.Lx538_10:
                        test             rax, rax
                                                                                        jz    .Lx538_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx538_4]
                        lea              rdx, [rip + .Lx538_5]
                                                                                        jmp   rax
.Lx538_4:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n527_match_assign_cond_α
.Lx538_5:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n525_match_assign_save_β
.Lx538_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx538_2:
                        test             rax, rax
                                                                                        je    .Lx538_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx538_7]
                        lea              rdx, [rip + .Lx538_8]
                                                                                        jmp   rax
.Lx538_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx538_2
.Lx538_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx538_2
.Lx538_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n525_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx538_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n527_match_assign_cond_α
.Lx538_6:
                        add              rsp, 16
                                                                                        jmp   n525_match_assign_save_β
n526_match_defer_β:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n525_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n527_match_assign_cond_α:
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
                                                                                        jmp   n523_match_alternate_s1
n527_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n526_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n528_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n529_match_any_α
n528_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n523_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n529_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx544_240
                        add              rsp, 16
                                                                                        jmp   n523_match_alternate_af
.Lx544_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx544_0
                        cmp              esi, 45
                                                                                        je    .Lx544_0
                        add              rsp, 16
                                                                                        jmp   n523_match_alternate_af
.Lx544_0:
                        add              r14d, 1
                                                                                        jmp   n530_match_assign_cond_α
n529_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n523_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n530_match_assign_cond_α:
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
                                                                                        jmp   n525_match_assign_save_α
n530_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n529_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n531_match_patref_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052576]                    # A
                        mov              rdx, qword ptr [1879052584]
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
                        test             rax, rax
                                                                                        jz    .Lx547_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx547_4]
                        lea              rdx, [rip + .Lx547_5]
                                                                                        jmp   rax
.Lx547_4:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n523_match_alternate_s0
.Lx547_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n523_match_alternate_af
.Lx547_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
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
                                                                                        js    n523_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx547_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n523_match_alternate_s0
.Lx547_6:
                        add              rsp, 16
                                                                                        jmp   n523_match_alternate_af
n531_match_patref_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n523_match_alternate_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx548_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx548_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx549_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx549_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx549_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx549_0:
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
                        lea              rax, [rip + n550_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n550_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n563_match_patref_α
n550_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n550_match_sequence_β:
                                                                                        jmp   n551_match_arbno_β
n550_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n551_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   proc_PAT$4_γ
n551_match_arbno_β:
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
                                                                                        jmp   n552_match_alternate_α
n551_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n552_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   proc_PAT$4_γ
n551_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx567_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n552_match_alternate_β
.Lx567_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n563_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n552_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx569_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n558_match_sequence_α
.Lx569_21:
                        lea              rax, [rip + .Lx569_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n553_match_sequence_α
n552_match_alternate_s0:
                        lea              rax, [rip + .Lx569_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n552_match_alternate_as
n552_match_alternate_s1:
                        lea              rax, [rip + .Lx569_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n552_match_alternate_as
.Lx569_40:
                                                                                        jmp   n558_match_sequence_β
.Lx569_41:
                                                                                        jmp   n553_match_sequence_β
n552_match_alternate_as:
                                                                                        jmp   n551_match_arbno_as
n552_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n552_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx569_19:
                                                                                        jmp   n551_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n553_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n557_match_lit_α
n553_match_sequence_as:
                                                                                        jmp   n552_match_alternate_s1
n553_match_sequence_β:
                                                                                        jmp   n556_match_assign_cond_β
n553_match_sequence_af:
                                                                                        jmp   n552_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n554_match_assign_save_α:
                        lea              rdi, [rbp + 288]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n555_match_patref_α
n554_match_assign_save_β:
                        lea              rdi, [rbp + 288]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n557_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n555_match_patref_α:
                        mov              qword ptr [rbp + 320], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx574_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx574_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx574_10
.Lx574_9:
                        xor              eax, eax
.Lx574_10:
                        test             rax, rax
                                                                                        jz    .Lx574_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx574_4]
                        lea              rdx, [rip + .Lx574_5]
                                                                                        jmp   rax
.Lx574_4:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n556_match_assign_cond_α
.Lx574_5:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n554_match_assign_save_β
.Lx574_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx574_2:
                        test             rax, rax
                                                                                        je    .Lx574_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx574_7]
                        lea              rdx, [rip + .Lx574_8]
                                                                                        jmp   rax
.Lx574_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx574_2
.Lx574_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx574_2
.Lx574_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n554_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx574_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n556_match_assign_cond_α
.Lx574_6:
                        add              rsp, 16
                                                                                        jmp   n554_match_assign_save_β
n555_match_patref_β:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n554_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n556_match_assign_cond_α:
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
                                                                                        jmp   n552_match_alternate_s1
n556_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n555_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n557_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n552_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n552_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n554_match_assign_save_α
n557_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n552_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n558_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n562_match_lit_α
n558_match_sequence_as:
                                                                                        jmp   n552_match_alternate_s0
n558_match_sequence_β:
                                                                                        jmp   n561_match_assign_cond_β
n558_match_sequence_af:
                                                                                        jmp   n552_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n559_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n560_match_patref_α
n559_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n562_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n560_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx583_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx583_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx583_10
.Lx583_9:
                        xor              eax, eax
.Lx583_10:
                        test             rax, rax
                                                                                        jz    .Lx583_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx583_4]
                        lea              rdx, [rip + .Lx583_5]
                                                                                        jmp   rax
.Lx583_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n561_match_assign_cond_α
.Lx583_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n559_match_assign_save_β
.Lx583_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx583_2:
                        test             rax, rax
                                                                                        je    .Lx583_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx583_7]
                        lea              rdx, [rip + .Lx583_8]
                                                                                        jmp   rax
.Lx583_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx583_2
.Lx583_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx583_2
.Lx583_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n559_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx583_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n561_match_assign_cond_α
.Lx583_6:
                        add              rsp, 16
                                                                                        jmp   n559_match_assign_save_β
n560_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n559_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n561_match_assign_cond_α:
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
                                                                                        jmp   n552_match_alternate_s0
n561_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n560_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n562_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n552_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n552_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n559_match_assign_save_α
n562_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n552_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n563_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
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
                        test             rax, rax
                                                                                        jz    .Lx588_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx588_4]
                        lea              rdx, [rip + .Lx588_5]
                                                                                        jmp   rax
.Lx588_4:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n551_match_arbno_α
.Lx588_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
.Lx588_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx588_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n551_match_arbno_α
.Lx588_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n563_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx589_0
                        mov              ecx, dword ptr [rbp + 360]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx589_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx590_0
                        mov              eax, dword ptr [rbp + 360]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx590_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx590_0
                        mov              dword ptr [rbp + 360], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx590_0:
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
                        lea              rax, [rip + n591_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n591_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n604_match_patref_α
n591_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n591_match_sequence_β:
                                                                                        jmp   n592_match_arbno_β
n591_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n592_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   proc_PAT$5_γ
n592_match_arbno_β:
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
                                                                                        jmp   n593_match_alternate_α
n592_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n593_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   proc_PAT$5_γ
n592_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx608_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n593_match_alternate_β
.Lx608_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n604_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n593_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx610_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n599_match_sequence_α
.Lx610_21:
                        lea              rax, [rip + .Lx610_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n594_match_sequence_α
n593_match_alternate_s0:
                        lea              rax, [rip + .Lx610_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n593_match_alternate_as
n593_match_alternate_s1:
                        lea              rax, [rip + .Lx610_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n593_match_alternate_as
.Lx610_40:
                                                                                        jmp   n599_match_sequence_β
.Lx610_41:
                                                                                        jmp   n594_match_sequence_β
n593_match_alternate_as:
                                                                                        jmp   n592_match_arbno_as
n593_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n593_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx610_19:
                                                                                        jmp   n592_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n594_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n598_match_lit_α
n594_match_sequence_as:
                                                                                        jmp   n593_match_alternate_s1
n594_match_sequence_β:
                                                                                        jmp   n597_match_assign_cond_β
n594_match_sequence_af:
                                                                                        jmp   n593_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n595_match_assign_save_α:
                        lea              rdi, [rbp + 288]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n596_match_patref_α
n595_match_assign_save_β:
                        lea              rdi, [rbp + 288]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n598_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n596_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx615_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx615_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx615_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx615_10
.Lx615_9:
                        xor              eax, eax
.Lx615_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx615_11:
                        test             rax, rax
                                                                                        jz    .Lx615_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx615_4]
                        lea              rdx, [rip + .Lx615_5]
                                                                                        jmp   rax
.Lx615_4:
                                                                                        jmp   n597_match_assign_cond_α
.Lx615_5:
                                                                                        jmp   n595_match_assign_save_β
.Lx615_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx615_2:
                        test             rax, rax
                                                                                        je    .Lx615_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx615_7]
                        lea              rdx, [rip + .Lx615_8]
                                                                                        jmp   rax
.Lx615_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx615_2
.Lx615_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx615_2
.Lx615_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n595_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx615_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n597_match_assign_cond_α
.Lx615_6:
                        add              rsp, 16
                                                                                        jmp   n595_match_assign_save_β
n596_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n597_match_assign_cond_α:
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
                                                                                        jmp   n593_match_alternate_s1
n597_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n596_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n598_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n593_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n593_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n595_match_assign_save_α
n598_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n593_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n599_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n603_match_lit_α
n599_match_sequence_as:
                                                                                        jmp   n593_match_alternate_s0
n599_match_sequence_β:
                                                                                        jmp   n602_match_assign_cond_β
n599_match_sequence_af:
                                                                                        jmp   n593_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n600_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n601_match_patref_α
n600_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n603_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n601_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx624_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx624_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx624_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx624_10
.Lx624_9:
                        xor              eax, eax
.Lx624_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx624_11:
                        test             rax, rax
                                                                                        jz    .Lx624_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx624_4]
                        lea              rdx, [rip + .Lx624_5]
                                                                                        jmp   rax
.Lx624_4:
                                                                                        jmp   n602_match_assign_cond_α
.Lx624_5:
                                                                                        jmp   n600_match_assign_save_β
.Lx624_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx624_2:
                        test             rax, rax
                                                                                        je    .Lx624_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx624_7]
                        lea              rdx, [rip + .Lx624_8]
                                                                                        jmp   rax
.Lx624_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx624_2
.Lx624_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx624_2
.Lx624_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n600_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx624_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n602_match_assign_cond_α
.Lx624_6:
                        add              rsp, 16
                                                                                        jmp   n600_match_assign_save_β
n601_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n602_match_assign_cond_α:
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
                                                                                        jmp   n593_match_alternate_s0
n602_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n601_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n603_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n593_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n593_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n600_match_assign_save_α
n603_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n593_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n604_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx629_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx629_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx629_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx629_10
.Lx629_9:
                        xor              eax, eax
.Lx629_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx629_11:
                        test             rax, rax
                                                                                        jz    .Lx629_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx629_4]
                        lea              rdx, [rip + .Lx629_5]
                                                                                        jmp   rax
.Lx629_4:
                                                                                        jmp   n592_match_arbno_α
.Lx629_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx629_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx629_2:
                        test             rax, rax
                                                                                        je    .Lx629_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx629_7]
                        lea              rdx, [rip + .Lx629_8]
                                                                                        jmp   rax
.Lx629_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx629_2
.Lx629_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx629_2
.Lx629_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx629_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n592_match_arbno_α
.Lx629_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n604_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx630_0
                        mov              ecx, dword ptr [rbp + 360]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx630_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx631_0
                        mov              eax, dword ptr [rbp + 360]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx631_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx631_0
                        mov              dword ptr [rbp + 360], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx631_0:
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
n632_lit_integer_α:
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
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n633_call_α
.Lx636_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n633_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lbynamefn238:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn238]                     # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx637_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx637_240:
                                                                                        jmp   n634_match_value_α
n633_call_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n634_match_value_α:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx638_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx638_4]
                        lea              rdx, [rip + .Lx638_5]
                                                                                        jmp   rax
.Lx638_4:
                                                                                        jmp   n635_match_fence1_α
.Lx638_5:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx638_0:
                        lea              rdi, [rbp + 32]                                # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx638_240
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
.Lx638_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx638_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n635_match_fence1_α
.Lx638_6:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
n634_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n635_match_fence1_α:
                        mov              rsp, rbp
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanhit
n635_match_fence1_β:
                        add              rsp, 80
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx641_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx641_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx642_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx642_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx642_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx642_0:
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
                        lea              rax, [rip + n643_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n643_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n653_lit_integer_α
n643_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n643_match_sequence_β:
                                                                                        jmp   n645_match_rpos_β
n643_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n644_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n645_match_rpos_α
n644_lit_integer_β:
                                                                                        jmp   n646_match_arbno_β
.Lx657_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n645_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n646_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n645_match_rpos_β:
                                                                                        jmp   n646_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n646_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n644_lit_integer_α
n646_match_arbno_β:
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
                                                                                        jmp   n647_match_sequence_α
n646_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n647_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n644_lit_integer_α
n646_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx660_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n647_match_sequence_β
.Lx660_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n654_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n647_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n652_match_patref_α
n647_match_sequence_as:
                                                                                        jmp   n646_match_arbno_as
n647_match_sequence_β:
                                                                                        jmp   n650_match_assign_cond_β
n647_match_sequence_af:
                                                                                        jmp   n646_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n648_match_assign_save_α:
                        lea              rdi, [rbp + 208]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n649_match_patref_α
n648_match_assign_save_β:
                        lea              rdi, [rbp + 208]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n651_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n649_match_patref_α:
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx665_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx665_4]
                        lea              rdx, [rip + .Lx665_5]
                                                                                        jmp   rax
.Lx665_4:
                                                                                        jmp   n650_match_assign_cond_α
.Lx665_5:
                                                                                        jmp   n648_match_assign_save_β
.Lx665_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx665_2:
                        test             rax, rax
                                                                                        je    .Lx665_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx665_7]
                        lea              rdx, [rip + .Lx665_8]
                                                                                        jmp   rax
.Lx665_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx665_2
.Lx665_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx665_2
.Lx665_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n648_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx665_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n650_match_assign_cond_α
.Lx665_6:
                        add              rsp, 16
                                                                                        jmp   n648_match_assign_save_β
n649_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n650_match_assign_cond_α:
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
                                                                                        jmp   n646_match_arbno_as
n650_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n649_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n651_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]                    # eol
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 8
                                                                                        jne   .Lx668_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx668_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx668_10
.Lx668_9:
                        xor              eax, eax
.Lx668_10:
                        test             rax, rax
                                                                                        jz    .Lx668_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx668_4]
                        lea              rdx, [rip + .Lx668_5]
                                                                                        jmp   rax
.Lx668_4:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n648_match_assign_save_α
.Lx668_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n652_match_patref_β
.Lx668_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx668_2:
                        test             rax, rax
                                                                                        je    .Lx668_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx668_7]
                        lea              rdx, [rip + .Lx668_8]
                                                                                        jmp   rax
.Lx668_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx668_2
.Lx668_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx668_2
.Lx668_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n652_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx668_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n648_match_assign_save_α
.Lx668_6:
                        add              rsp, 16
                                                                                        jmp   n652_match_patref_β
n651_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n652_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n652_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx669_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx669_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx669_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx669_10
.Lx669_9:
                        xor              eax, eax
.Lx669_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx669_11:
                        test             rax, rax
                                                                                        jz    .Lx669_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx669_4]
                        lea              rdx, [rip + .Lx669_5]
                                                                                        jmp   rax
.Lx669_4:
                                                                                        jmp   n651_match_patref_α
.Lx669_5:
                                                                                        jmp   n646_match_arbno_af
.Lx669_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx669_2:
                        test             rax, rax
                                                                                        je    .Lx669_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx669_7]
                        lea              rdx, [rip + .Lx669_8]
                                                                                        jmp   rax
.Lx669_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx669_2
.Lx669_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx669_2
.Lx669_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n646_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx669_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n651_match_patref_α
.Lx669_6:
                        add              rsp, 16
                                                                                        jmp   n646_match_arbno_af
n652_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n654_match_pos_α
n653_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx670_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n654_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n646_match_arbno_α
n654_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx672_0
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx672_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   .Lx673_0
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx673_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx673_0
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx673_0:
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
#         DEFINE('PSH()')                         :(PSH_x)
#         DEFINE('DRF(nm)')                       :(DRF_x)
#         DEFINE('ADD()p1')                       :(ADD_x)
#         DEFINE('SUB()p1')                       :(SUB_x)
#         DEFINE('MUL()p1')                       :(MUL_x)
#         DEFINE('DIV()p1')                       :(DIV_x)
#         DEFINE('SGN()p1')                       :(SGN_x)
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n675_call_α
n674_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n677_keyword_snobol4_α
.Lx973_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n675_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd975:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd975]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx974_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n677_keyword_snobol4_α
.Lx974_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n676_assign_α
n675_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n677_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 32
                                                                                        jmp   n677_keyword_snobol4_α
n676_assign_β:
                        add              rsp, 32
                                                                                        jmp   n677_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n677_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx977_0]                # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n678_assign_α
n677_keyword_snobol4_β:
                        add              rsp, 16
                                                                                        jmp   n679_lit_string_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n678_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # LCASE
                        mov              qword ptr [1879052520], rdx
                        add              rsp, 16
                                                                                        jmp   n679_lit_string_α
n678_assign_β:
                        add              rsp, 16
                                                                                        jmp   n679_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n680_assign_α
n679_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n681_lit_string_α
.Lx979_0:
                        .quad            .Lx979_0_s
.Lx979_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n680_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # DIGITS
                        mov              qword ptr [1879052536], rdx
                        add              rsp, 16
                                                                                        jmp   n681_lit_string_α
n680_assign_β:
                        add              rsp, 16
                                                                                        jmp   n681_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n682_call_α
n681_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n684_lit_string_α
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd983:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd983]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx982_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n684_lit_string_α
.Lx982_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n683_assign_α
n682_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n684_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n683_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # V
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 32
                                                                                        jmp   n684_lit_string_α
n683_assign_β:
                        add              rsp, 32
                                                                                        jmp   n684_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n685_call_α
n684_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n687_lit_string_α
.Lx985_0:
                        .quad            .Lx985_0_s
.Lx985_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n685_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd987:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd987]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx986_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n687_lit_string_α
.Lx986_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n686_assign_α
n685_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n687_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n686_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # I
                        mov              qword ptr [1879052568], rdx
                        add              rsp, 32
                                                                                        jmp   n687_lit_string_α
n686_assign_β:
                        add              rsp, 32
                                                                                        jmp   n687_lit_string_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n688_call_α
n687_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n690_lit_string_α
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n688_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd991:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd991]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx990_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n690_lit_string_α
.Lx990_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n689_assign_α
n688_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n690_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n689_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # A
                        mov              qword ptr [1879052584], rdx
                        add              rsp, 32
                                                                                        jmp   n690_lit_string_α
n689_assign_β:
                        add              rsp, 32
                                                                                        jmp   n690_lit_string_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n691_call_α
n690_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n693_lit_string_α
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n691_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd995:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd995]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx994_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n693_lit_string_α
.Lx994_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n692_assign_α
n691_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n693_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n692_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # F
                        mov              qword ptr [1879052600], rdx
                        add              rsp, 32
                                                                                        jmp   n693_lit_string_α
n692_assign_β:
                        add              rsp, 32
                                                                                        jmp   n693_lit_string_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n694_call_α
n693_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n696_lit_string_α
.Lx997_0:
                        .quad            .Lx997_0_s
.Lx997_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n694_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd999:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd999]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx998_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n696_lit_string_α
.Lx998_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n695_assign_α
n694_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n696_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n695_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # T
                        mov              qword ptr [1879052616], rdx
                        add              rsp, 32
                                                                                        jmp   n696_lit_string_α
n695_assign_β:
                        add              rsp, 32
                                                                                        jmp   n696_lit_string_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n697_call_α
n696_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n699_lit_string_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1003:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1003]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1002_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n699_lit_string_α
.Lx1002_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n698_assign_α
n697_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n698_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # X
                        mov              qword ptr [1879052632], rdx
                        add              rsp, 32
                                                                                        jmp   n699_lit_string_α
n698_assign_β:
                        add              rsp, 32
                                                                                        jmp   n699_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n700_call_α
n699_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n702_lit_string_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n700_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1007:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1007]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1006_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n702_lit_string_α
.Lx1006_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n701_assign_α
n700_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n702_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n701_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # eol
                        mov              qword ptr [1879052648], rdx
                        add              rsp, 32
                                                                                        jmp   n702_lit_string_α
n701_assign_β:
                        add              rsp, 32
                                                                                        jmp   n702_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n703_call_α
n702_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n705_lit_string_α
.Lx1009_0:
                        .quad            .Lx1009_0_s
.Lx1009_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1011:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1011]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1010_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n705_lit_string_α
.Lx1010_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n704_assign_α
n703_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n705_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # C
                        mov              qword ptr [1879052664], rdx
                        add              rsp, 32
                                                                                        jmp   n705_lit_string_α
n704_assign_β:
                        add              rsp, 32
                                                                                        jmp   n705_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1013_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n706_lit_integer_α
n705_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n708_lit_integer_α
.Lx1013_0:
                        .quad            .Lx1013_0_s
.Lx1013_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1014_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n707_call_α
n706_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n708_lit_integer_α
.Lx1014_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n707_call_α:
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
.Lrkfnzd1016:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1016]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1015_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n708_lit_integer_α
.Lx1015_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n708_lit_integer_α
n707_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n708_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n709_call_α
n708_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n711_call_α
.Lx1017_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n709_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd288:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd288]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1018_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n711_call_α
.Lx1018_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n710_assign_α
n709_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n711_call_α
#-----------------------------------------------------------------------------------------------------------------------
n710_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax                    # nl
                        mov              qword ptr [1879052680], rdx
                        add              rsp, 32
                                                                                        jmp   n711_call_α
n710_assign_β:
                        add              rsp, 32
                                                                                        jmp   n711_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n711_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1021:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1021]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1020_240
                        add              rsp, 16
                                                                                        jmp   n713_var_α
.Lx1020_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n712_assign_α
n711_call_β:
                        add              rsp, 16
                                                                                        jmp   n713_var_α
#-----------------------------------------------------------------------------------------------------------------------
n712_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # vars
                        mov              qword ptr [1879052504], rdx
                        add              rsp, 16
                                                                                        jmp   n713_var_α
n712_assign_β:
                        add              rsp, 16
                                                                                        jmp   n713_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n714_lit_string_α
n713_var_β:
                        add              rsp, 16
                                                                                        jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n715_subscript_α
n714_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n718_var_α
.Lx1024_0:
                        .quad            .Lx1024_0_s
.Lx1024_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n715_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1025_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n718_var_α
.Lx1025_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n716_lit_integer_α
n715_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1026_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n717_assign_var_α
n716_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n718_var_α
.Lx1026_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n717_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1027_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n718_var_α
.Lx1027_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n718_var_α
n717_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n718_var_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n718_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n719_lit_string_α
n718_var_β:
                        add              rsp, 16
                                                                                        jmp   n723_var_α
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n720_subscript_α
n719_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n723_var_α
.Lx1029_0:
                        .quad            .Lx1029_0_s
.Lx1029_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n720_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1030_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n723_var_α
.Lx1030_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n721_lit_integer_α
n720_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n723_var_α
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1031_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n722_assign_var_α
n721_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n723_var_α
.Lx1031_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n722_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1032_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n723_var_α
.Lx1032_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n723_var_α
n722_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n723_var_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n723_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n724_lit_string_α
n723_var_β:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n725_subscript_α
n724_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n728_var_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n725_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1035_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n728_var_α
.Lx1035_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n726_lit_integer_α
n725_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n727_assign_var_α
n726_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n728_var_α
.Lx1036_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n727_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1037_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n728_var_α
.Lx1037_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n728_var_α
n727_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n728_var_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1038_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1038_240
                        add              rsp, 16
                                                                                        jmp   n760_var_α
.Lx1038_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n729_assign_α
n728_var_β:
                        add              rsp, 16
                                                                                        jmp   n760_var_α
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n729_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # line
                        mov              qword ptr [1879052696], rdx
                        add              rsp, 16
                                                                                        jmp   n730_var_α
n729_assign_β:
                        add              rsp, 16
                                                                                        jmp   n760_var_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n730_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n731_var_α
n730_var_β:
                        add              rsp, 16
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n731_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]                    # line
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n732_binop_α
n731_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n732_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n733_var_α
n732_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]                    # nl
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n734_binop_α
n733_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n734_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n735_assign_α
n734_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n735_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 80
                                                                                        jmp   n736_var_α
n735_assign_β:
                        add              rsp, 80
                                                                                        jmp   n736_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n736_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n737_call_α
n736_var_β:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n737_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1048:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1048]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1047_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n728_var_α
.Lx1047_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n738_lit_integer_α
n737_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n739_coerce_numeric_α
n738_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n728_var_α
.Lx1049_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n739_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1051_1
                        cmp              eax, 3
                                                                                        jne   .Lx1051_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1051_0
.Lx1051_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n740_coerce_numeric_α
.Lx1051_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n740_coerce_numeric_α
n739_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n740_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1053_1
                        cmp              eax, 3
                                                                                        jne   .Lx1053_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1053_0
.Lx1053_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n741_cmp_test_α
.Lx1053_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n741_cmp_test_α
n740_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n741_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1055_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n728_var_α
.Lx1055_240:
                        add              rsp, 96
                                                                                        jmp   n742_var_α
n741_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n728_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n742_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n743_var_α
n742_var_β:
                        add              rsp, 16
                                                                                        jmp   n746_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n743_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n744_binop_α
n743_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n746_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n744_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n745_assign_α
n744_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n746_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n745_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 48
                                                                                        jmp   n746_lit_string_α
n745_assign_β:
                        add              rsp, 48
                                                                                        jmp   n746_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n747_assign_α
n746_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n748_var_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n747_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # b1
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 16
                                                                                        jmp   n748_var_α
n747_assign_β:
                        add              rsp, 16
                                                                                        jmp   n748_var_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n748_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n749_call_α
n748_var_β:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n749_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1064:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1064]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1063_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n728_var_α
.Lx1063_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n750_lit_integer_α
n749_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n751_coerce_numeric_α
n750_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n728_var_α
.Lx1065_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n751_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1067_1
                        cmp              eax, 3
                                                                                        jne   .Lx1067_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1067_0
.Lx1067_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n752_coerce_numeric_α
.Lx1067_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n752_coerce_numeric_α
n751_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n752_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1069_1
                        cmp              eax, 3
                                                                                        jne   .Lx1069_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1069_0
.Lx1069_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n753_cmp_test_α
.Lx1069_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n753_cmp_test_α
n752_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n728_var_α
#-----------------------------------------------------------------------------------------------------------------------
n753_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1071_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n728_var_α
.Lx1071_240:
                        add              rsp, 96
                                                                                        jmp   n754_var_α
n753_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n728_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n754_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n755_var_α
n754_var_β:
                        add              rsp, 16
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n755_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n756_binop_α
n755_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n756_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n757_assign_α
n756_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n757_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 48
                                                                                        jmp   n758_lit_string_α
n757_assign_β:
                        add              rsp, 48
                                                                                        jmp   n758_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1076_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n759_assign_α
n758_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
.Lx1076_0:
                        .quad            .Lx1076_0_s
.Lx1076_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n759_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b2
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 16
                                                                                        jmp   n728_var_α
n759_assign_β:
                        add              rsp, 16
                                                                                        jmp   n728_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n760_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # src
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n761_var_α
n760_var_β:
                        add              rsp, 16
                                                                                        jmp   n766_call_α
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b2
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n762_binop_α
n761_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n766_call_α
#-----------------------------------------------------------------------------------------------------------------------
n762_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n763_var_α
n762_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n766_call_α
#-----------------------------------------------------------------------------------------------------------------------
n763_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # b1
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n764_binop_α
n763_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n766_call_α
#-----------------------------------------------------------------------------------------------------------------------
n764_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n765_assign_α
n764_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n766_call_α
#-----------------------------------------------------------------------------------------------------------------------
n765_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # src
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 80
                                                                                        jmp   n766_call_α
n765_assign_β:
                        add              rsp, 80
                                                                                        jmp   n766_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n766_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1085:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1085]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1084_240
                        add              rsp, 16
                                                                                        jmp   n768_var_α
.Lx1084_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n767_assign_α
n766_call_β:
                        add              rsp, 16
                                                                                        jmp   n768_var_α
#-----------------------------------------------------------------------------------------------------------------------
n767_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # t0
                        mov              qword ptr [1879052760], rdx
                        add              rsp, 16
                                                                                        jmp   n768_var_α
n767_assign_β:
                        add              rsp, 16
                                                                                        jmp   n768_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n768_var_α:
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
                                                                                        jmp   n769_match_begin_α
n768_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n780_call_α
#-----------------------------------------------------------------------------------------------------------------------
n769_match_begin_α:
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
.Lx1089_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n770_match_patref_α
n769_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx1089_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1089_1
                                                                                        jmp   .Lx1089_0
.Lx1089_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx1089_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1089_2
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
                                                                                        jmp   n780_call_α
#-----------------------------------------------------------------------------------------------------------------------
n770_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1090_11
                        mov              rax, qword ptr [1879052656]                    # C
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 8
                                                                                        jne   .Lx1090_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1090_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1090_10
.Lx1090_9:
                        xor              eax, eax
.Lx1090_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx1090_11:
                        test             rax, rax
                                                                                        jz    .Lx1090_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1090_4]
                        lea              rdx, [rip + .Lx1090_5]
                                                                                        jmp   rax
.Lx1090_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n771_match_end_α
.Lx1090_5:
                                                                                        jmp   n769_match_begin_β
.Lx1090_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1090_2:
                        test             rax, rax
                                                                                        je    .Lx1090_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1090_7]
                        lea              rdx, [rip + .Lx1090_8]
                                                                                        jmp   rax
.Lx1090_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1090_2
.Lx1090_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1090_2
.Lx1090_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n769_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1090_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n771_match_end_α
.Lx1090_6:
                        add              rsp, 16
                                                                                        jmp   n769_match_begin_β
n770_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n771_match_end_α:
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
.Lx1092_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1092_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1092_1:
                        test             rax, rax
                                                                                        je    .Lx1092_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1092_3]
                        lea              rdx, [rip + .Lx1092_4]
                                                                                        jmp   rax
.Lx1092_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1092_1
.Lx1092_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1092_1
.Lx1092_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1092_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1092_6
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
                                                                                        jmp   n772_call_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n772_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1094:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1094]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1093_240
                        add              rsp, 16
                                                                                        jmp   n774_lit_string_α
.Lx1093_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n773_assign_α
n772_call_β:
                        add              rsp, 16
                                                                                        jmp   n774_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n774_lit_string_α
n773_assign_β:
                        add              rsp, 16
                                                                                        jmp   n774_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n775_var_α
n774_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1096_0:
                        .quad            .Lx1096_0_s
.Lx1096_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n775_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n776_var_α
n775_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n776_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n777_binop_α
n776_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n777_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1099_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1099_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n778_binop_α
n777_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n778_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n779_assign_α
n778_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n779_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1101_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n779_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1101_0:
                        .quad            .Lx1101_0_s
.Lx1101_0_s:
                        .string          "TERMINAL"
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n780_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1103:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1103]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1102_240
                        add              rsp, 16
                                                                                        jmp   n782_lit_string_α
.Lx1102_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n781_assign_α
n780_call_β:
                        add              rsp, 16
                                                                                        jmp   n782_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t1
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n782_lit_string_α
n781_assign_β:
                        add              rsp, 16
                                                                                        jmp   n782_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n783_assign_α
n782_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n784_lit_string_α
.Lx1105_0:
                        .quad            .Lx1105_0_s
.Lx1105_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n783_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1106_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n784_lit_string_α
n783_assign_β:
                        add              rsp, 16
                                                                                        jmp   n784_lit_string_α
.Lx1106_0:
                        .quad            .Lx1106_0_s
.Lx1106_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n785_var_α
n784_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1107_0:
                        .quad            .Lx1107_0_s
.Lx1107_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n785_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t1
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n786_var_α
n785_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # t0
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n787_binop_α
n786_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n787_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1110_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1110_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n788_binop_α
n787_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n788_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n789_assign_α
n788_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n789_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1112_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n789_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1112_0:
                        .quad            .Lx1112_0_s
.Lx1112_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n790_goto_α:
                                                                                        jmp   n791_var_α
n790_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n791_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n792_lit_integer_α
n791_var_β:
                        add              rsp, 16
                                                                                        jmp   n797_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1115_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n793_subscript_α
n792_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n797_lit_integer_α
.Lx1115_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n793_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1116_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n797_lit_integer_α
.Lx1116_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n794_deref_α
n793_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n797_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n794_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1117_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n797_lit_integer_α
.Lx1117_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n795_call_α
n794_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n797_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n795_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1119_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1119_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1119_6]
                        lea              rdx, [rip + .Lx1119_7]
                                                                                        jmp   rax
.Lx1119_6:
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
                                                                                        jmp   .Lx1119_2
.Lx1119_7:
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
                                                                                        jmp   .Lx1119_2
.Lx1119_5:
                        add              rsp, 32
.Lx1119_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1119_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n797_lit_integer_α
.Lx1119_240:
                                                                                        jmp   n796_assign_α
n795_call_β:
                                                                                        jmp   n797_lit_integer_α
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n796_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1120_0]               # name
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   n797_lit_integer_α
n796_assign_β:
                        add              rsp, 80
                                                                                        jmp   n797_lit_integer_α
.Lx1120_0:
                        .quad            .Lx1120_0_s
.Lx1120_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1121_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n798_assign_α
n797_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n799_lit_string_α
.Lx1121_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n798_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n799_lit_string_α
n798_assign_β:
                        add              rsp, 16
                                                                                        jmp   n799_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n800_call_α
n799_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1123_0:
                        .quad            .Lx1123_0_s
.Lx1123_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n800_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1125:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1125]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1124_240
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1124_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n801_assign_α
n800_call_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n801_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n802_lit_string_α
n801_assign_β:
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n803_call_α
n802_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n805_save_restore_α
.Lx1127_0:
                        .quad            .Lx1127_0_s
.Lx1127_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n803_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1129:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1129]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1128_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n805_save_restore_α
.Lx1128_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n804_save_restore_α
n803_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n805_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n804_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n805_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n806_goto_α:
                                                                                        jmp   n674_lit_integer_α
n806_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n807_goto_α:
                                                                                        jmp   n808_var_α
n807_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n808_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n809_lit_integer_α
n808_var_β:
                        add              rsp, 16
                                                                                        jmp   n812_var_α
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n810_binop_α
n809_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n812_var_α
.Lx1137_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n810_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1138_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n812_var_α
.Lx1138_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n811_assign_α
n810_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n812_var_α
#-----------------------------------------------------------------------------------------------------------------------
n811_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n812_var_α
n811_assign_β:
                        add              rsp, 48
                                                                                        jmp   n812_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n813_var_α
n812_var_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n813_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n814_subscript_α
n813_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n814_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1142_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
.Lx1142_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n815_assign_α
n814_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n815_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n802_lit_string_α
n815_assign_β:
                        add              rsp, 48
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n816_goto_α:
                                                                                        jmp   n674_lit_integer_α
n816_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n817_goto_α:
                                                                                        jmp   n818_var_α
n817_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n818_var_α:
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
                                                                                        jmp   n819_match_begin_α
n818_var_β:
                        add              rsp, 16
                        add              rsp, 464
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n819_match_begin_α:
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
.Lx1148_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n820_match_sequence_α
n819_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1148_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1148_1
                                                                                        jmp   .Lx1148_0
.Lx1148_1:
                        mov              r10, qword ptr [1879048192]
.Lx1148_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1148_2
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
                                                                                        jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n820_match_sequence_α:
                                                                                        jmp   n830_lit_integer_α
n820_match_sequence_as:
                                                                                        jmp   n821_match_end_α
n820_match_sequence_β:
                                                                                        jmp   n828_match_rpos_β
n820_match_sequence_af:
                                                                                        jmp   n819_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n821_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx1152_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1152_9
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
.Lx1152_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1152_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1152_1:
                        test             rax, rax
                                                                                        je    .Lx1152_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1152_3]
                        lea              rdx, [rip + .Lx1152_4]
                                                                                        jmp   rax
.Lx1152_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1152_1
.Lx1152_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1152_1
.Lx1152_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1152_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1152_6
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
                                                                                        jmp   n822_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n822_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n823_var_α
n822_var_β:
                        add              rsp, 16
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n823_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n824_subscript_α
n823_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n824_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1155_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n804_save_restore_α
.Lx1155_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n825_deref_α
n824_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n825_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1156_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n804_save_restore_α
.Lx1156_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n826_assign_α
n825_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n826_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 64
                                                                                        jmp   n804_save_restore_α
n826_assign_β:
                        add              rsp, 64
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n827_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1158_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n828_match_rpos_α
n827_lit_integer_β:
                                                                                        jmp   n829_match_any_β
.Lx1158_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n828_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n829_match_any_β
                                                                                        jmp   n821_match_end_α
n828_match_rpos_β:
                                                                                        jmp   n829_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n829_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n819_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n819_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n827_lit_integer_α
n829_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n819_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n830_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n831_match_pos_α
n830_lit_integer_β:
                                                                                        jmp   n819_match_begin_β
.Lx1162_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n831_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n819_match_begin_β
                                                                                        jmp   n829_match_any_α
n831_match_pos_β:
                                                                                        jmp   n819_match_begin_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n833_assign_α
n832_var_β:
                        add              rsp, 16
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n804_save_restore_α
n833_assign_β:
                        add              rsp, 16
                                                                                        jmp   n804_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n834_goto_α:
                                                                                        jmp   n832_var_α
n834_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n835_goto_α:
                                                                                        jmp   n674_lit_integer_α
n835_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n836_goto_α:
                                                                                        jmp   n837_var_α
n836_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n838_var_α
n837_var_β:
                        add              rsp, 16
                                                                                        jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n839_subscript_α
n838_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n839_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1171_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n843_var_α
.Lx1171_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n840_deref_α
n839_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n840_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1172_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n843_var_α
.Lx1172_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n841_call_α
n840_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n841_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1174_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1174_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1174_6]
                        lea              rdx, [rip + .Lx1174_7]
                                                                                        jmp   rax
.Lx1174_6:
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
                                                                                        jmp   .Lx1174_2
.Lx1174_7:
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
                                                                                        jmp   .Lx1174_2
.Lx1174_5:
                        add              rsp, 32
.Lx1174_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1174_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n843_var_α
.Lx1174_240:
                                                                                        jmp   n842_assign_α
n841_call_β:
                                                                                        jmp   n843_var_α
.Lx1174_0:
                        .quad            .Lx1174_0_s
.Lx1174_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n842_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n843_var_α
n842_assign_β:
                        add              rsp, 80
                                                                                        jmp   n843_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n844_lit_integer_α
n843_var_β:
                        add              rsp, 16
                                                                                        jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n845_binop_α
n844_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n847_var_α
.Lx1177_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n845_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1178_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n847_var_α
.Lx1178_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n846_assign_α
n845_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n847_var_α
n846_assign_β:
                        add              rsp, 48
                                                                                        jmp   n847_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n848_var_α
n847_var_β:
                        add              rsp, 16
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n848_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n849_subscript_α
n848_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n849_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1182_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n858_lit_string_α
.Lx1182_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n850_var_α
n849_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n851_var_α
n850_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n851_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n852_subscript_α
n851_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n852_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1185_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n858_lit_string_α
.Lx1185_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n853_deref_α
n852_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n853_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1186_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n858_lit_string_α
.Lx1186_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n854_call_α
n853_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n854_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1188_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1188_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1188_6]
                        lea              rdx, [rip + .Lx1188_7]
                                                                                        jmp   rax
.Lx1188_6:
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
                                                                                        jmp   .Lx1188_2
.Lx1188_7:
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
                                                                                        jmp   .Lx1188_2
.Lx1188_5:
                        add              rsp, 32
.Lx1188_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1188_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n858_lit_string_α
.Lx1188_240:
                                                                                        jmp   n855_var_α
n854_call_β:
                                                                                        jmp   n858_lit_string_α
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n855_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_binop_α
n855_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n856_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1190_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n858_lit_string_α
.Lx1190_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n857_assign_var_α
n856_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n857_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1191_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n858_lit_string_α
.Lx1191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n858_lit_string_α
n857_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n858_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n858_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n859_call_α
n858_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1192_0:
                        .quad            .Lx1192_0_s
.Lx1192_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n859_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1194:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1194]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1193_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1193_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n860_assign_α
n859_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n860_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
n860_assign_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n861_goto_α:
                                                                                        jmp   n674_lit_integer_α
n861_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n862_goto_α:
                                                                                        jmp   n863_var_α
n862_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n863_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n864_var_α
n863_var_β:
                        add              rsp, 16
                                                                                        jmp   n869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n865_subscript_α
n864_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n865_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1200_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n869_var_α
.Lx1200_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n866_deref_α
n865_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n866_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1201_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n869_var_α
.Lx1201_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n867_call_α
n866_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n867_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1203_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1203_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1203_6]
                        lea              rdx, [rip + .Lx1203_7]
                                                                                        jmp   rax
.Lx1203_6:
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
                                                                                        jmp   .Lx1203_2
.Lx1203_7:
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
                                                                                        jmp   .Lx1203_2
.Lx1203_5:
                        add              rsp, 32
.Lx1203_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1203_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n869_var_α
.Lx1203_240:
                                                                                        jmp   n868_assign_α
n867_call_β:
                                                                                        jmp   n869_var_α
.Lx1203_0:
                        .quad            .Lx1203_0_s
.Lx1203_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n868_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n869_var_α
n868_assign_β:
                        add              rsp, 80
                                                                                        jmp   n869_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n869_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n870_lit_integer_α
n869_var_β:
                        add              rsp, 16
                                                                                        jmp   n873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n871_binop_α
n870_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n873_var_α
.Lx1206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n871_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1207_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n873_var_α
.Lx1207_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n872_assign_α
n871_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n872_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n873_var_α
n872_assign_β:
                        add              rsp, 48
                                                                                        jmp   n873_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n874_var_α
n873_var_β:
                        add              rsp, 16
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n874_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n875_subscript_α
n874_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n875_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1211_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n884_lit_string_α
.Lx1211_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n876_var_α
n875_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n876_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n877_var_α
n876_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n877_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n878_subscript_α
n877_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n878_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1214_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n884_lit_string_α
.Lx1214_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n879_deref_α
n878_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n879_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1215_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n884_lit_string_α
.Lx1215_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n880_call_α
n879_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n880_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1217_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1217_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1217_6]
                        lea              rdx, [rip + .Lx1217_7]
                                                                                        jmp   rax
.Lx1217_6:
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
                                                                                        jmp   .Lx1217_2
.Lx1217_7:
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
                                                                                        jmp   .Lx1217_2
.Lx1217_5:
                        add              rsp, 32
.Lx1217_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1217_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n884_lit_string_α
.Lx1217_240:
                                                                                        jmp   n881_var_α
n880_call_β:
                                                                                        jmp   n884_lit_string_α
.Lx1217_0:
                        .quad            .Lx1217_0_s
.Lx1217_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n881_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n882_binop_α
n881_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n882_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1219_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n884_lit_string_α
.Lx1219_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n883_assign_var_α
n882_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n883_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1220_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n884_lit_string_α
.Lx1220_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n884_lit_string_α
n883_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n884_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n884_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n885_call_α
n884_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1221_0:
                        .quad            .Lx1221_0_s
.Lx1221_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n885_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1223:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1223]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1222_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1222_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n886_assign_α
n885_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
n886_assign_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n887_goto_α:
                                                                                        jmp   n674_lit_integer_α
n887_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n888_goto_α:
                                                                                        jmp   n889_var_α
n888_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n890_var_α
n889_var_β:
                        add              rsp, 16
                                                                                        jmp   n895_var_α
#-----------------------------------------------------------------------------------------------------------------------
n890_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n891_subscript_α
n890_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n895_var_α
#-----------------------------------------------------------------------------------------------------------------------
n891_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1229_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n895_var_α
.Lx1229_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_deref_α
n891_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n895_var_α
#-----------------------------------------------------------------------------------------------------------------------
n892_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1230_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n895_var_α
.Lx1230_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n893_call_α
n892_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n895_var_α
#-----------------------------------------------------------------------------------------------------------------------
n893_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1232_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1232_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1232_6]
                        lea              rdx, [rip + .Lx1232_7]
                                                                                        jmp   rax
.Lx1232_6:
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
                                                                                        jmp   .Lx1232_2
.Lx1232_7:
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
                                                                                        jmp   .Lx1232_2
.Lx1232_5:
                        add              rsp, 32
.Lx1232_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1232_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n895_var_α
.Lx1232_240:
                                                                                        jmp   n894_assign_α
n893_call_β:
                                                                                        jmp   n895_var_α
.Lx1232_0:
                        .quad            .Lx1232_0_s
.Lx1232_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n894_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n895_var_α
n894_assign_β:
                        add              rsp, 80
                                                                                        jmp   n895_var_α
#=======================================================================================================================
#         sp = sp - 1
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
                                                                                        jmp   n899_var_α
#-----------------------------------------------------------------------------------------------------------------------
n896_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n897_binop_α
n896_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n899_var_α
.Lx1235_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n897_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1236_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n899_var_α
.Lx1236_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n898_assign_α
n897_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n899_var_α
#-----------------------------------------------------------------------------------------------------------------------
n898_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n899_var_α
n898_assign_β:
                        add              rsp, 48
                                                                                        jmp   n899_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n900_var_α
n899_var_β:
                        add              rsp, 16
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_subscript_α
n900_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n901_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1240_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n910_lit_string_α
.Lx1240_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n902_var_α
n901_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n903_var_α
n902_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n904_subscript_α
n903_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1243_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n910_lit_string_α
.Lx1243_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n905_deref_α
n904_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1244_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n910_lit_string_α
.Lx1244_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n906_call_α
n905_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n906_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1246_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1246_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1246_6]
                        lea              rdx, [rip + .Lx1246_7]
                                                                                        jmp   rax
.Lx1246_6:
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
                                                                                        jmp   .Lx1246_2
.Lx1246_7:
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
                                                                                        jmp   .Lx1246_2
.Lx1246_5:
                        add              rsp, 32
.Lx1246_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1246_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n910_lit_string_α
.Lx1246_240:
                                                                                        jmp   n907_var_α
n906_call_β:
                                                                                        jmp   n910_lit_string_α
.Lx1246_0:
                        .quad            .Lx1246_0_s
.Lx1246_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n907_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_binop_α
n907_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n908_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1248_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n910_lit_string_α
.Lx1248_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n909_assign_var_α
n908_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n909_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1249_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n910_lit_string_α
.Lx1249_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n910_lit_string_α
n909_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n910_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n911_call_α
n910_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1250_0:
                        .quad            .Lx1250_0_s
.Lx1250_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n911_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1252:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1252]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1251_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1251_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n912_assign_α
n911_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n912_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
n912_assign_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n913_goto_α:
                                                                                        jmp   n674_lit_integer_α
n913_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n914_goto_α:
                                                                                        jmp   n915_var_α
n914_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n915_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n916_var_α
n915_var_β:
                        add              rsp, 16
                                                                                        jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n916_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_subscript_α
n916_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n917_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1258_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n921_var_α
.Lx1258_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n918_deref_α
n917_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n918_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1259_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n921_var_α
.Lx1259_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n919_call_α
n918_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n919_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1261_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1261_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1261_6]
                        lea              rdx, [rip + .Lx1261_7]
                                                                                        jmp   rax
.Lx1261_6:
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
                                                                                        jmp   .Lx1261_2
.Lx1261_7:
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
                                                                                        jmp   .Lx1261_2
.Lx1261_5:
                        add              rsp, 32
.Lx1261_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1261_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n921_var_α
.Lx1261_240:
                                                                                        jmp   n920_assign_α
n919_call_β:
                                                                                        jmp   n921_var_α
.Lx1261_0:
                        .quad            .Lx1261_0_s
.Lx1261_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n920_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n921_var_α
n920_assign_β:
                        add              rsp, 80
                                                                                        jmp   n921_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n921_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n922_lit_integer_α
n921_var_β:
                        add              rsp, 16
                                                                                        jmp   n925_var_α
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1264_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n923_binop_α
n922_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n925_var_α
.Lx1264_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n923_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1265_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n925_var_α
.Lx1265_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n924_assign_α
n923_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n925_var_α
#-----------------------------------------------------------------------------------------------------------------------
n924_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n925_var_α
n924_assign_β:
                        add              rsp, 48
                                                                                        jmp   n925_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n925_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n926_var_α
n925_var_β:
                        add              rsp, 16
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n926_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n927_subscript_α
n926_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n927_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1269_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n936_lit_string_α
.Lx1269_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n928_var_α
n927_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n928_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n929_var_α
n928_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n929_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n930_subscript_α
n929_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n930_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1272_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n936_lit_string_α
.Lx1272_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n931_deref_α
n930_subscript_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n931_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1273_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n936_lit_string_α
.Lx1273_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n932_call_α
n931_deref_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n932_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1275_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1275_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1275_6]
                        lea              rdx, [rip + .Lx1275_7]
                                                                                        jmp   rax
.Lx1275_6:
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
                                                                                        jmp   .Lx1275_2
.Lx1275_7:
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
                                                                                        jmp   .Lx1275_2
.Lx1275_5:
                        add              rsp, 32
.Lx1275_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1275_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n936_lit_string_α
.Lx1275_240:
                                                                                        jmp   n933_var_α
n932_call_β:
                                                                                        jmp   n936_lit_string_α
.Lx1275_0:
                        .quad            .Lx1275_0_s
.Lx1275_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n933_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n934_binop_α
n933_var_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n934_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1277_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n936_lit_string_α
.Lx1277_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n935_assign_var_α
n934_binop_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n935_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1278_240
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n936_lit_string_α
.Lx1278_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 176
                                                                                        jmp   n936_lit_string_α
n935_assign_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n936_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n936_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1279_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n937_call_α
n936_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1279_0:
                        .quad            .Lx1279_0_s
.Lx1279_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n937_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1281:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1281]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1280_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1280_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n938_assign_α
n937_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n938_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
n938_assign_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n939_goto_α:
                                                                                        jmp   n674_lit_integer_α
n939_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n940_goto_α:
                                                                                        jmp   n941_var_α
n940_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
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
                                                                                        jmp   n947_var_α
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
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n943_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1287_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n947_var_α
.Lx1287_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n944_deref_α
n943_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n944_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1288_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n947_var_α
.Lx1288_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n945_call_α
n944_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n945_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1290_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1290_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1290_6]
                        lea              rdx, [rip + .Lx1290_7]
                                                                                        jmp   rax
.Lx1290_6:
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
                                                                                        jmp   .Lx1290_2
.Lx1290_7:
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
                                                                                        jmp   .Lx1290_2
.Lx1290_5:
                        add              rsp, 32
.Lx1290_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1290_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n947_var_α
.Lx1290_240:
                                                                                        jmp   n946_assign_α
n945_call_β:
                                                                                        jmp   n947_var_α
.Lx1290_0:
                        .quad            .Lx1290_0_s
.Lx1290_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n946_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 80
                                                                                        jmp   n947_var_α
n946_assign_β:
                        add              rsp, 80
                                                                                        jmp   n947_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n947_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n948_lit_integer_α
n947_var_β:
                        add              rsp, 16
                                                                                        jmp   n951_var_α
#-----------------------------------------------------------------------------------------------------------------------
n948_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1293_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n949_binop_α
n948_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n951_var_α
.Lx1293_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n949_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1294_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n951_var_α
.Lx1294_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n950_assign_α
n949_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n951_var_α
#-----------------------------------------------------------------------------------------------------------------------
n950_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n951_var_α
n950_assign_β:
                        add              rsp, 48
                                                                                        jmp   n951_var_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n952_var_α
n951_var_β:
                        add              rsp, 16
                                                                                        jmp   n960_var_α
#-----------------------------------------------------------------------------------------------------------------------
n952_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n953_subscript_α
n952_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n960_var_α
#-----------------------------------------------------------------------------------------------------------------------
n953_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1298_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n960_var_α
.Lx1298_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n954_deref_α
n953_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n960_var_α
#-----------------------------------------------------------------------------------------------------------------------
n954_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1299_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n960_var_α
.Lx1299_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n955_lit_string_α
n954_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n960_var_α
#-----------------------------------------------------------------------------------------------------------------------
n955_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1300_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n956_call_α
n955_lit_string_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n960_var_α
.Lx1300_0:
                        .quad            .Lx1300_0_s
.Lx1300_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n956_call_α:
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
.Lrkfnzd1302:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1302]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1301_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n960_var_α
.Lx1301_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n957_var_α
n956_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n960_var_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n957_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n958_unop_α
n957_var_β:
                        add              rsp, 16
                                                                                        jmp   n960_var_α
#-----------------------------------------------------------------------------------------------------------------------
n958_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n959_assign_α
n958_unop_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n960_var_α
#-----------------------------------------------------------------------------------------------------------------------
n959_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 32
                                                                                        jmp   n960_var_α
n959_assign_β:
                        add              rsp, 32
                                                                                        jmp   n960_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n960_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n961_var_α
n960_var_β:
                        add              rsp, 16
                                                                                        jmp   n965_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n962_subscript_α
n961_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n965_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n962_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1308_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n965_lit_string_α
.Lx1308_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n963_var_α
n962_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n965_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n963_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n964_assign_var_α
n963_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n965_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n964_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1310_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n965_lit_string_α
.Lx1310_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n965_lit_string_α
n964_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n965_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n965_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1311_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n966_call_α
n965_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1311_0:
                        .quad            .Lx1311_0_s
.Lx1311_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n966_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1313:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1313]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1312_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
.Lx1312_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n967_assign_α
n966_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n967_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # SGN
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
n967_assign_β:
                        add              rsp, 32
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n968_goto_α:
                                                                                        jmp   n960_var_α
n968_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n969_goto_α:
                                                                                        jmp   n674_lit_integer_α
n969_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n970_goto_α:
                                                                                        jmp   n728_var_α
n970_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n971_goto_α:
                                                                                        jmp   n760_var_α
n971_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n972_goto_α:
                                                                                        jmp   n780_call_α
n972_goto_β:
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
