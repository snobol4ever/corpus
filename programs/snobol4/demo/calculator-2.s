                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__EMIT_α
proc_LBL__EMIT_α:
                        .global          proc_LBL__EMIT_α
                        .global          proc_LBL__EMIT_β
                        .global          proc_LBL__EMIT_γ
                        .global          proc_LBL__EMIT_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n4_subscript_α
.Lx18_0:
                        .quad            1
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
.Lx19_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_subscript_α:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n6_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_deref_α:
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n8_call_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n9_call_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx25_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx25_5
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_6]
                        lea              rdx, [rip + .Lx25_7]
                                                                                        jmp   rax
.Lx25_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx25_2
.Lx25_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx25_2
.Lx25_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx25_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx25_21
.Lx25_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        call             rt_arg_stage@PLT
.Lx25_21:
                        mov              rdi, qword ptr [rip + .Lx25_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx25_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_3]
                        lea              rdx, [rip + .Lx25_4]
                                                                                        jmp   rax
.Lx25_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx25_2
.Lx25_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx25_2
.Lx25_1:
                        call             rt_faildescr@PLT
.Lx25_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n10_assign_α
n8_call_β:
                                                                                        jmp   n3_lit_integer_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn27:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n11_assign_α
n9_call_β:
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              rdi, qword ptr [rip + .Lx28_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n3_lit_integer_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n13_call_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn32:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n15_op14_α
                                                                                        jmp   n14_op14_α
n13_call_β:
                                                                                        jmp   n15_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n15_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_β:
                                                                                        jmp   proc_LBL__EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__PSH_α
proc_LBL__PSH_α:
                        .global          proc_LBL__PSH_α
                        .global          proc_LBL__PSH_β
                        .global          proc_LBL__PSH_γ
                        .global          proc_LBL__PSH_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_binop_α
.Lx52_0:
                        .quad            1
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx54_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx54_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx54_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx54_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_assign_α
.Lx54_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx54_2
                        add              rsp, 16
                                                                                        jmp   n44_assign_α
.Lx54_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx54_240
                        add              rsp, 32
                                                                                        jmp   n40_var_α
.Lx54_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n45_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n46_call_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n43_lit_string_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn60:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n49_op14_α
                                                                                        jmp   n48_op14_α
n46_call_β:
                                                                                        jmp   n49_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n49_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_β:
                                                                                        jmp   proc_LBL__PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DRF_α
proc_LBL__DRF_α:
                        .global          proc_LBL__DRF_α
                        .global          proc_LBL__DRF_β
                        .global          proc_LBL__DRF_γ
                        .global          proc_LBL__DRF_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n68_match_head_α
n67_var_β:
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_match_head_α:
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rsp + 448], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx87_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n70_match_sequence_α
n68_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx87_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx87_1
                                                                                        jmp   .Lx87_0
.Lx87_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rsp + 448]
                                                                                        jmp   n69_var_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n71_assign_α
n69_var_β:
                        add              rsp, 16
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n70_match_sequence_α:
                                                                                        jmp   n74_lit_integer_α
n70_match_sequence_as:
                                                                                        jmp   n73_match_release_α
n70_match_sequence_β:
                                                                                        jmp   n78_match_rpos_β
n70_match_sequence_af:
                                                                                        jmp   n68_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n72_op14_α
n71_assign_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n73_match_release_α:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx95_1:
                        test             rax, rax
                                                                                        je    .Lx95_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx95_3]
                        lea              rdx, [rip + .Lx95_4]
                                                                                        jmp   rax
.Lx95_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx95_1
.Lx95_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx95_1
.Lx95_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rsp + 448]
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rsp + 544], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n75_match_pos_α
n74_lit_integer_β:
                                                                                        jmp   n68_match_head_β
.Lx96_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n75_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n68_match_head_β
                                                                                        jmp   n76_match_any_α
n75_match_pos_β:
                                                                                        jmp   n68_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n76_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n68_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n68_match_head_β
                        add              r14d, 1
                                                                                        jmp   n77_lit_integer_α
n76_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n68_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n78_match_rpos_α
n77_lit_integer_β:
                                                                                        jmp   n76_match_any_β
.Lx100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n78_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n76_match_any_β
                                                                                        jmp   n73_match_release_α
n78_match_rpos_β:
                                                                                        jmp   n76_match_any_β
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n80_var_α
n79_var_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n81_subscript_α
n80_var_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n72_op14_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n82_deref_α
n81_subscript_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n82_deref_α:
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n72_op14_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n83_assign_α
n82_deref_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n72_op14_α
n83_assign_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_β:
                                                                                        jmp   proc_LBL__DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ADD_α
proc_LBL__ADD_α:
                        .global          proc_LBL__ADD_α
                        .global          proc_LBL__ADD_β
                        .global          proc_LBL__ADD_γ
                        .global          proc_LBL__ADD_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                                                                                        jmp   n111_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n111_subscript_α:
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n110_var_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n114_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_binop_α
.Lx141_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_deref_α:
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n110_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n118_call_α
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx144_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx144_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx144_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx144_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx144_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx144_2
                        add              rsp, 16
                                                                                        jmp   n119_assign_α
.Lx144_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx144_240
                        add              rsp, 32
                                                                                        jmp   n113_var_α
.Lx144_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n120_subscript_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rsp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n121_call_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx148_5
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx148_6]
                        lea              rdx, [rip + .Lx148_7]
                                                                                        jmp   rax
.Lx148_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx148_2
.Lx148_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx148_2
.Lx148_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx148_20
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx148_21
.Lx148_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        call             rt_arg_stage@PLT
.Lx148_21:
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx148_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx148_3]
                        lea              rdx, [rip + .Lx148_4]
                                                                                        jmp   rax
.Lx148_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx148_2
.Lx148_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx148_2
.Lx148_1:
                        call             rt_faildescr@PLT
.Lx148_2:
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n110_var_α
                                                                                        jmp   n122_assign_α
n118_call_β:
                                                                                        jmp   n110_var_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn152:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n124_assign_α
n121_call_β:
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n127_call_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n128_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn159:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n130_op14_α
                                                                                        jmp   n129_op14_α
n127_call_β:
                                                                                        jmp   n130_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n128_subscript_α:
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n131_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n130_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n131_deref_α:
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n132_call_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx167_5
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx167_6]
                        lea              rdx, [rip + .Lx167_7]
                                                                                        jmp   rax
.Lx167_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_20
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx167_21
.Lx167_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        call             rt_arg_stage@PLT
.Lx167_21:
                        mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx167_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx167_3]
                        lea              rdx, [rip + .Lx167_4]
                                                                                        jmp   rax
.Lx167_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_1:
                        call             rt_faildescr@PLT
.Lx167_2:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                                                                                        jmp   n133_var_α
n132_call_β:
                                                                                        jmp   n117_lit_string_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 100
                                                                                        je    .Lx169_0
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 100
                                                                                        je    .Lx169_0
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx169_2
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 6
                                                                                        jne   .Lx169_2
.Lx169_1:
                        mov              rax, qword ptr [rsp + 840]
                        mov              rcx, qword ptr [rsp + 952]
                        add              rax, rcx
                        mov              qword ptr [rsp + 816], 6
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n135_assign_var_α
.Lx169_0:
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 0
                        lea              r9, [rsp + 816]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n135_assign_var_α
.Lx169_2:
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n135_assign_var_α
n134_binop_β:
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_var_α:
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_β:
                                                                                        jmp   proc_LBL__ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__SUB_α
proc_LBL__SUB_α:
                        .global          proc_LBL__SUB_α
                        .global          proc_LBL__SUB_β
                        .global          proc_LBL__SUB_γ
                        .global          proc_LBL__SUB_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                                                                                        jmp   n175_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_subscript_α:
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n174_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n178_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n179_binop_α
.Lx205_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                                                                                        jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_deref_α:
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n174_var_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n182_call_α
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx208_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx208_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx208_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx208_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n183_assign_α
.Lx208_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx208_2
                        add              rsp, 16
                                                                                        jmp   n183_assign_α
.Lx208_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx208_240
                        add              rsp, 32
                                                                                        jmp   n177_var_α
.Lx208_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n183_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                                                                                        jmp   n184_subscript_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rsp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n185_call_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx212_5
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx212_6]
                        lea              rdx, [rip + .Lx212_7]
                                                                                        jmp   rax
.Lx212_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx212_2
.Lx212_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx212_2
.Lx212_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx212_20
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx212_21
.Lx212_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        call             rt_arg_stage@PLT
.Lx212_21:
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx212_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx212_3]
                        lea              rdx, [rip + .Lx212_4]
                                                                                        jmp   rax
.Lx212_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx212_2
.Lx212_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx212_2
.Lx212_1:
                        call             rt_faildescr@PLT
.Lx212_2:
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n174_var_α
                                                                                        jmp   n186_assign_α
n182_call_β:
                                                                                        jmp   n174_var_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n177_var_α
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                                                                                        jmp   n187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn216:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n188_assign_α
n185_call_β:
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n174_var_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                                                                                        jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n191_call_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n192_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn223:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n194_op14_α
                                                                                        jmp   n193_op14_α
n191_call_β:
                                                                                        jmp   n194_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n192_subscript_α:
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n195_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n193_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n194_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n195_deref_α:
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n196_call_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx231_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx231_5
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx231_6]
                        lea              rdx, [rip + .Lx231_7]
                                                                                        jmp   rax
.Lx231_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx231_20
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx231_21
.Lx231_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        call             rt_arg_stage@PLT
.Lx231_21:
                        mov              rdi, qword ptr [rip + .Lx231_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx231_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx231_3]
                        lea              rdx, [rip + .Lx231_4]
                                                                                        jmp   rax
.Lx231_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_1:
                        call             rt_faildescr@PLT
.Lx231_2:
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                                                                                        jmp   n197_var_α
n196_call_β:
                                                                                        jmp   n181_lit_string_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n198_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 100
                                                                                        je    .Lx233_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 100
                                                                                        je    .Lx233_0
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 6
                                                                                        jne   .Lx233_2
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx233_2
.Lx233_1:
                        mov              rax, qword ptr [rsp + 1272]
                        mov              rcx, qword ptr [rsp + 1384]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 1248], 6
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n199_assign_var_α
.Lx233_0:
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              r8d, 1
                        lea              r9, [rsp + 1248]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n199_assign_var_α
.Lx233_2:
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                                                                                        jmp   n199_assign_var_α
n198_binop_β:
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1248]
                        mov              rcx, qword ptr [rsp + 1256]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_β:
                                                                                        jmp   proc_LBL__SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__MUL_α
proc_LBL__MUL_α:
                        .global          proc_LBL__MUL_α
                        .global          proc_LBL__MUL_β
                        .global          proc_LBL__MUL_γ
                        .global          proc_LBL__MUL_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                                                                                        jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n239_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n240_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n238_var_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n242_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n243_binop_α
.Lx269_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                                                                                        jmp   n244_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_deref_α:
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n238_var_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n246_call_α
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx272_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx272_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx272_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx272_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n247_assign_α
.Lx272_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx272_2
                        add              rsp, 16
                                                                                        jmp   n247_assign_α
.Lx272_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx272_240
                        add              rsp, 32
                                                                                        jmp   n241_var_α
.Lx272_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n247_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                                                                                        jmp   n248_subscript_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rsp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n249_call_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx276_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx276_5
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx276_6]
                        lea              rdx, [rip + .Lx276_7]
                                                                                        jmp   rax
.Lx276_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx276_2
.Lx276_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx276_2
.Lx276_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_20
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx276_21
.Lx276_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        call             rt_arg_stage@PLT
.Lx276_21:
                        mov              rdi, qword ptr [rip + .Lx276_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx276_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx276_3]
                        lea              rdx, [rip + .Lx276_4]
                                                                                        jmp   rax
.Lx276_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx276_2
.Lx276_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx276_2
.Lx276_1:
                        call             rt_faildescr@PLT
.Lx276_2:
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n238_var_α
                                                                                        jmp   n250_assign_α
n246_call_β:
                                                                                        jmp   n238_var_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n241_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_subscript_α:
                        mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                                                                                        jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn280:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n252_assign_α
n249_call_β:
                                                                                        jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n255_call_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                                                                                        jmp   n256_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn287:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n258_op14_α
                                                                                        jmp   n257_op14_α
n255_call_β:
                                                                                        jmp   n258_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n256_subscript_α:
                        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                                                                                        jmp   n259_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n258_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n259_deref_α:
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                                                                                        jmp   n260_call_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx295_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx295_5
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx295_6]
                        lea              rdx, [rip + .Lx295_7]
                                                                                        jmp   rax
.Lx295_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_20
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx295_21
.Lx295_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        call             rt_arg_stage@PLT
.Lx295_21:
                        mov              rdi, qword ptr [rip + .Lx295_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx295_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_1:
                        call             rt_faildescr@PLT
.Lx295_2:
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                                                                                        jmp   n261_var_α
n260_call_β:
                                                                                        jmp   n245_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                                                                                        jmp   n262_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 100
                                                                                        je    .Lx297_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              eax, 100
                                                                                        je    .Lx297_0
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 6
                                                                                        jne   .Lx297_2
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx297_2
.Lx297_1:
                        mov              rax, qword ptr [rsp + 1704]
                        mov              rcx, qword ptr [rsp + 1816]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 1680], 6
                        mov              qword ptr [rsp + 1688], rax
                                                                                        jmp   n263_assign_var_α
.Lx297_0:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 2
                        lea              r9, [rsp + 1680]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n263_assign_var_α
.Lx297_2:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                                                                                        jmp   n263_assign_var_α
n262_binop_β:
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_β:
                                                                                        jmp   proc_LBL__MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DIV_α
proc_LBL__DIV_α:
                        .global          proc_LBL__DIV_α
                        .global          proc_LBL__DIV_β
                        .global          proc_LBL__DIV_γ
                        .global          proc_LBL__DIV_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                                                                                        jmp   n303_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n304_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n303_subscript_α:
                        mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1968]
                        mov              rcx, qword ptr [rsp + 1976]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n302_var_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                                                                                        jmp   n306_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n307_binop_α
.Lx333_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_deref_α:
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n302_var_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                                                                                        jmp   n310_call_α
#-----------------------------------------------------------------------------------------------------------------------
n307_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx336_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx336_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx336_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx336_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n311_assign_α
.Lx336_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx336_2
                        add              rsp, 16
                                                                                        jmp   n311_assign_α
.Lx336_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx336_240
                        add              rsp, 32
                                                                                        jmp   n305_var_α
.Lx336_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n311_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                                                                                        jmp   n312_subscript_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:
                        mov              qword ptr [rsp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 2328], rax
                                                                                        jmp   n313_call_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n310_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx340_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx340_5
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx340_6]
                        lea              rdx, [rip + .Lx340_7]
                                                                                        jmp   rax
.Lx340_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        mov              rdi, qword ptr [rip + .Lx340_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n302_var_α
                                                                                        jmp   n314_assign_α
n310_call_β:
                                                                                        jmp   n302_var_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_subscript_α:
                        mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                                                                                        jmp   n315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn344:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn344]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n317_lit_string_α
                                                                                        jmp   n316_assign_α
n313_call_β:
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n302_var_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n319_call_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n320_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn351:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n322_op14_α
                                                                                        jmp   n321_op14_α
n319_call_β:
                                                                                        jmp   n322_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n320_subscript_α:
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2192]
                        mov              rcx, qword ptr [rsp + 2200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n323_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n321_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n322_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n323_deref_α:
                        mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n324_call_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx359_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx359_5
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx359_6]
                        lea              rdx, [rip + .Lx359_7]
                                                                                        jmp   rax
.Lx359_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx359_2
.Lx359_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx359_2
.Lx359_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx359_20
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx359_21
.Lx359_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        call             rt_arg_stage@PLT
.Lx359_21:
                        mov              rdi, qword ptr [rip + .Lx359_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx359_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx359_3]
                        lea              rdx, [rip + .Lx359_4]
                                                                                        jmp   rax
.Lx359_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx359_2
.Lx359_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx359_2
.Lx359_1:
                        call             rt_faildescr@PLT
.Lx359_2:
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                                                                                        jmp   n325_var_α
n324_call_β:
                                                                                        jmp   n309_lit_string_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                                                                                        jmp   n326_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n326_binop_α:
                        mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 100
                                                                                        je    .Lx361_0
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 100
                                                                                        je    .Lx361_0
                        mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 6
                                                                                        jne   .Lx361_2
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 6
                                                                                        jne   .Lx361_2
.Lx361_1:
                        mov              rax, qword ptr [rsp + 2136]
                        mov              rcx, qword ptr [rsp + 2248]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rsp + 2112], 6
                        mov              qword ptr [rsp + 2120], rax
                                                                                        jmp   n327_assign_var_α
.Lx361_0:
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        mov              r8d, 3
                        lea              r9, [rsp + 2112]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n327_assign_var_α
.Lx361_2:
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                                                                                        jmp   n327_assign_var_α
n326_binop_β:
                                                                                        jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2096]
                        mov              rsi, qword ptr [rsp + 2104]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                                                                                        jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_β:
                                                                                        jmp   proc_LBL__DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__SGN_α
proc_LBL__SGN_α:
                        .global          proc_LBL__SGN_α
                        .global          proc_LBL__SGN_β
                        .global          proc_LBL__SGN_γ
                        .global          proc_LBL__SGN_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                                                                                        jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                                                                                        jmp   n367_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n367_subscript_α:
                        mov              rdi, qword ptr [rsp + 2384]
                        mov              rsi, qword ptr [rsp + 2392]
                        mov              rdx, qword ptr [rsp + 2400]
                        mov              rcx, qword ptr [rsp + 2408]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n366_var_α
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                                                                                        jmp   n370_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n371_binop_α
.Lx400_0:
                        .quad            1
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                                                                                        jmp   n372_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_deref_α:
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n366_var_α
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                                                                                        jmp   n374_call_α
#-----------------------------------------------------------------------------------------------------------------------
n371_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx403_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx403_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx403_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx403_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n375_assign_α
.Lx403_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx403_2
                        add              rsp, 16
                                                                                        jmp   n375_assign_α
.Lx403_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx403_240
                        add              rsp, 32
                                                                                        jmp   n369_var_α
.Lx403_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n375_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                                                                                        jmp   n376_subscript_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                                                                                        jmp   n377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx407_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx407_5
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx407_6]
                        lea              rdx, [rip + .Lx407_7]
                                                                                        jmp   rax
.Lx407_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_20
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx407_21
.Lx407_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        call             rt_arg_stage@PLT
.Lx407_21:
                        mov              rdi, qword ptr [rip + .Lx407_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx407_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx407_3]
                        lea              rdx, [rip + .Lx407_4]
                                                                                        jmp   rax
.Lx407_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_1:
                        call             rt_faildescr@PLT
.Lx407_2:
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n366_var_α
                                                                                        jmp   n379_assign_α
n374_call_β:
                                                                                        jmp   n366_var_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_subscript_α:
                        mov              rdi, qword ptr [rsp + 2560]
                        mov              rsi, qword ptr [rsp + 2568]
                        mov              rdx, qword ptr [rsp + 2576]
                        mov              rcx, qword ptr [rsp + 2584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n373_var_α
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                                                                                        jmp   n380_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                                                                                        jmp   n381_subscript_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rsp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 2808], rax
                                                                                        jmp   n382_call_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_deref_α:
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n373_var_α
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                                                                                        jmp   n383_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_subscript_α:
                        mov              rdi, qword ptr [rsp + 2672]
                        mov              rsi, qword ptr [rsp + 2680]
                        mov              rdx, qword ptr [rsp + 2688]
                        mov              rcx, qword ptr [rsp + 2696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n378_lit_string_α
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                                                                                        jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn416:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n386_lit_string_α
                                                                                        jmp   n385_assign_α
n382_call_β:
                                                                                        jmp   n386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rsp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 2632], rax
                                                                                        jmp   n387_call_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                                                                                        jmp   n388_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n389_call_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn422:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n373_var_α
                                                                                        jmp   n390_var_α
n387_call_β:
                                                                                        jmp   n373_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
                        mov              rdx, qword ptr [rsp + 2720]
                        mov              rcx, qword ptr [rsp + 2728]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n378_lit_string_α
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                                                                                        jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn425:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n392_op14_α
                                                                                        jmp   n391_op14_α
n389_call_β:
                                                                                        jmp   n392_op14_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n393_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n391_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n392_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n393_unop_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n394_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n373_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_β:
                                                                                        jmp   proc_LBL__SGN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
                        .global          proc_EMIT_α
                        .global          proc_EMIT_β
                        .global          proc_EMIT_γ
                        .global          proc_EMIT_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n433_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n434_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n434_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx438_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
                        .global          proc_PSH_α
                        .global          proc_PSH_β
                        .global          proc_PSH_γ
                        .global          proc_PSH_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n439_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n440_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n440_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx444_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
                        .global          proc_DRF_α
                        .global          proc_DRF_β
                        .global          proc_DRF_γ
                        .global          proc_DRF_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n445_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n446_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n446_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx450_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
                        .global          proc_ADD_α
                        .global          proc_ADD_β
                        .global          proc_ADD_γ
                        .global          proc_ADD_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n451_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n452_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n452_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx456_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
                        .global          proc_SUB_α
                        .global          proc_SUB_β
                        .global          proc_SUB_γ
                        .global          proc_SUB_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n457_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n458_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n458_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx462_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
                        .global          proc_MUL_α
                        .global          proc_MUL_β
                        .global          proc_MUL_γ
                        .global          proc_MUL_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n463_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n464_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n464_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx468_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
                        .global          proc_DIV_α
                        .global          proc_DIV_β
                        .global          proc_DIV_γ
                        .global          proc_DIV_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n469_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n470_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n470_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx474_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SGN_α
proc_SGN_α:
                        .global          proc_SGN_α
                        .global          proc_SGN_β
                        .global          proc_SGN_γ
                        .global          proc_SGN_ω
                        sub              rsp, 4784
                        mov              [rsp + 4760], rcx
                        mov              [rsp + 4768], rdx
                        mov              rdi, rsp
                        mov              ecx, 4752
                        xor              eax, eax
                        rep stosb
proc_SGN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n475_op14_α:
                        mov              rdi, qword ptr [rsp + 4760]
                        mov              rsi, qword ptr [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n476_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n476_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx480_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4760]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_ω:
                        mov              rax, [rsp + 4768]
                        add              rsp, 4784
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n483_match_assign_cond_β]
                        mov              qword ptr [rsp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n481_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n482_match_any_α
n481_match_assign_save_β:
                        add              rsp, 16
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
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$0_scanhit
n483_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n482_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rsp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n492_match_assign_cond_β]
                        mov              qword ptr [rsp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n490_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n491_match_span_α
n490_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n491_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx496_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx496_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx496_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx496_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx496_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx496_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx496_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx496_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx496_1
                        add              ecx, 1
                                                                                        jmp   .Lx496_0
.Lx496_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx496_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx496_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n492_match_assign_cond_α
n491_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n492_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$1_scanhit
n492_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n491_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rsp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n499_match_alternate_α:
                        mov              dword ptr [rsp + 16], r14d
                        mov              dword ptr [rsp + 20], 0
                                                                                        jmp   n500_match_defer_α
n499_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n499_match_alternate_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                                                                                        je    n500_match_defer_β
                        cmp              eax, 1
                                                                                        je    n501_match_defer_β
                                                                                        jmp   n502_match_sequence_β
n499_match_alternate_af:
                        add              dword ptr [rsp + 20], 1
                        mov              r14d, dword ptr [rsp + 16]
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 1
                                                                                        je    n501_match_defer_α
                        cmp              eax, 2
                                                                                        je    n502_match_sequence_α
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx508_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                                                                                        jne   .Lx508_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx508_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx508_10
.Lx508_9:
                        xor              eax, eax
.Lx508_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx508_11:
                        test             rax, rax
                                                                                        jz    .Lx508_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx508_4]
                        lea              rdx, [rip + .Lx508_5]
                                                                                        jmp   rax
.Lx508_4:
                                                                                        jmp   n499_match_alternate_as
.Lx508_5:
                                                                                        jmp   n499_match_alternate_af
.Lx508_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx508_2:
                        test             rax, rax
                                                                                        je    .Lx508_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx508_7]
                        lea              rdx, [rip + .Lx508_8]
                                                                                        jmp   rax
.Lx508_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx508_2
.Lx508_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx508_2
.Lx508_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n499_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx508_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n499_match_alternate_as
.Lx508_6:
                        add              rsp, 16
                                                                                        jmp   n499_match_alternate_af
n500_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n501_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx509_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                                                                                        jne   .Lx509_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx509_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx509_10
.Lx509_9:
                        xor              eax, eax
.Lx509_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx509_11:
                        test             rax, rax
                                                                                        jz    .Lx509_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx509_4]
                        lea              rdx, [rip + .Lx509_5]
                                                                                        jmp   rax
.Lx509_4:
                                                                                        jmp   n499_match_alternate_as
.Lx509_5:
                                                                                        jmp   n499_match_alternate_af
.Lx509_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx509_2:
                        test             rax, rax
                                                                                        je    .Lx509_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx509_7]
                        lea              rdx, [rip + .Lx509_8]
                                                                                        jmp   rax
.Lx509_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx509_2
.Lx509_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx509_2
.Lx509_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n499_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx509_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n499_match_alternate_as
.Lx509_6:
                        add              rsp, 16
                                                                                        jmp   n499_match_alternate_af
n501_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n502_match_sequence_α:
                        mov              dword ptr [rsp + 64], r14d
                                                                                        jmp   n503_match_lit_α
n502_match_sequence_as:
                                                                                        jmp   n499_match_alternate_as
n502_match_sequence_β:
                                                                                        jmp   n505_match_lit_β
n502_match_sequence_af:
                                                                                        jmp   n499_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n503_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n499_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n499_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n504_match_defer_α
n503_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n499_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n504_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx514_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx514_10
.Lx514_9:
                        xor              eax, eax
.Lx514_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx514_11:
                        test             rax, rax
                                                                                        jz    .Lx514_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx514_4]
                        lea              rdx, [rip + .Lx514_5]
                                                                                        jmp   rax
.Lx514_4:
                                                                                        jmp   n505_match_lit_α
.Lx514_5:
                                                                                        jmp   n503_match_lit_β
.Lx514_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx514_2:
                        test             rax, rax
                                                                                        je    .Lx514_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx514_7]
                        lea              rdx, [rip + .Lx514_8]
                                                                                        jmp   rax
.Lx514_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx514_2
.Lx514_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx514_2
.Lx514_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n503_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx514_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n505_match_lit_α
.Lx514_6:
                        add              rsp, 16
                                                                                        jmp   n503_match_lit_β
n504_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n505_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n504_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n504_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n499_match_alternate_as
n505_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n504_match_defer_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
8:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rsp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rsp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n517_match_alternate_α:
                        mov              dword ptr [rsp + 16], r14d
                        mov              dword ptr [rsp + 20], 0
                                                                                        jmp   n518_match_defer_α
n517_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n517_match_alternate_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                                                                                        je    n518_match_defer_β
                                                                                        jmp   n519_match_sequence_β
n517_match_alternate_af:
                        add              dword ptr [rsp + 20], 1
                        mov              r14d, dword ptr [rsp + 16]
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 1
                                                                                        je    n519_match_sequence_α
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n518_match_defer_α:
                        mov              qword ptr [rsp + 32], rsp
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 3
                                                                                        jne   .Lx528_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx528_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx528_10
.Lx528_9:
                        xor              eax, eax
.Lx528_10:
                        test             rax, rax
                                                                                        jz    .Lx528_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx528_4]
                        lea              rdx, [rip + .Lx528_5]
                                                                                        jmp   rax
.Lx528_4:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   n517_match_alternate_as
.Lx528_5:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   n517_match_alternate_af
.Lx528_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx528_2:
                        test             rax, rax
                                                                                        je    .Lx528_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx528_7]
                        lea              rdx, [rip + .Lx528_8]
                                                                                        jmp   rax
.Lx528_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx528_2
.Lx528_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx528_2
.Lx528_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n517_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx528_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n517_match_alternate_as
.Lx528_6:
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
n518_match_defer_β:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n519_match_sequence_α:
                        mov              dword ptr [rsp + 48], r14d
                                                                                        jmp   n520_match_assign_save_α
n519_match_sequence_as:
                                                                                        jmp   n517_match_alternate_as
n519_match_sequence_β:
                                                                                        jmp   n523_match_assign_cond_β
n519_match_sequence_af:
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n520_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n524_match_any_α
n520_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n521_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n522_match_assign_save_α
n521_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n524_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n522_match_assign_save_α:
                        lea              rdi, [rsp + 160]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n525_match_defer_α
n522_match_assign_save_β:
                        lea              rdi, [rsp + 160]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n521_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n523_match_assign_cond_α:
                        lea              rdi, [rsp + 160]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n517_match_alternate_as
n523_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n525_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n524_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx540_240
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
.Lx540_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx540_0
                        cmp              esi, 45
                                                                                        je    .Lx540_0
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
.Lx540_0:
                        add              r14d, 1
                                                                                        jmp   n521_match_assign_cond_α
n524_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n525_match_defer_α:
                        mov              qword ptr [rsp + 192], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx541_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx541_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx541_10
.Lx541_9:
                        xor              eax, eax
.Lx541_10:
                        test             rax, rax
                                                                                        jz    .Lx541_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx541_4]
                        lea              rdx, [rip + .Lx541_5]
                                                                                        jmp   rax
.Lx541_4:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n523_match_assign_cond_α
.Lx541_5:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n522_match_assign_save_β
.Lx541_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx541_2:
                        test             rax, rax
                                                                                        je    .Lx541_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx541_7]
                        lea              rdx, [rip + .Lx541_8]
                                                                                        jmp   rax
.Lx541_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx541_2
.Lx541_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx541_2
.Lx541_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n522_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx541_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n523_match_assign_cond_α
.Lx541_6:
                        add              rsp, 16
                                                                                        jmp   n522_match_assign_save_β
n525_match_defer_β:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n522_match_assign_save_β
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
8:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rsp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 232]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], r8
                        mov              dword ptr [rsp + 344], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n542_match_sequence_β]
                        mov              qword ptr [rsp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n542_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n543_match_defer_α
n542_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n542_match_sequence_β:
                                                                                        jmp   n544_match_arbno_β
n542_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n543_match_defer_α:
                        mov              qword ptr [rsp + 32], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx558_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx558_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx558_10
.Lx558_9:
                        xor              eax, eax
.Lx558_10:
                        test             rax, rax
                                                                                        jz    .Lx558_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx558_4]
                        lea              rdx, [rip + .Lx558_5]
                                                                                        jmp   rax
.Lx558_4:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   n544_match_arbno_α
.Lx558_5:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   proc_PAT$4_ω
.Lx558_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx558_2:
                        test             rax, rax
                                                                                        je    .Lx558_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx558_7]
                        lea              rdx, [rip + .Lx558_8]
                                                                                        jmp   rax
.Lx558_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx558_2
.Lx558_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx558_2
.Lx558_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx558_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n544_match_arbno_α
.Lx558_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n543_match_defer_β:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n544_match_arbno_α:
                        mov              dword ptr [rsp + 64], r14d
                        mov              dword ptr [rsp + 68], r14d
                        mov              dword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 88], rsp
                        mov              qword ptr [rsp + 80], 0
                                                                                        jmp   proc_PAT$4_γ
n544_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 68]
                        mov              rax, qword ptr [rsp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n545_match_alternate_α
n544_match_arbno_as:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              r14d, eax
                                                                                        je    n545_match_alternate_β
                        mov              rbp, qword ptr [rsp + 72]
                        mov              eax, dword ptr [rsp + 72]
                        add              eax, 1
                        mov              dword ptr [rsp + 72], eax
                        mov              dword ptr [rsp + 68], r14d
                                                                                        jmp   proc_PAT$4_γ
n544_match_arbno_af:
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rsp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx560_2
                        sub              ecx, 1
                        mov              dword ptr [rsp + 72], ecx
                        mov              qword ptr [rsp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n545_match_alternate_β
.Lx560_2:
                        mov              r14d, dword ptr [rsp + 64]
                        mov              rsp, qword ptr [rsp + 88]
                                                                                        jmp   n543_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n545_match_alternate_α:
                        mov              dword ptr [rsp + 112], r14d
                        mov              dword ptr [rsp + 116], 0
                                                                                        jmp   n547_match_sequence_α
n545_match_alternate_as:
                                                                                        jmp   n544_match_arbno_as
n545_match_alternate_β:
                        mov              eax, dword ptr [rsp + 116]
                        cmp              eax, 0
                                                                                        je    n547_match_sequence_β
                                                                                        jmp   n548_match_sequence_β
n545_match_alternate_af:
                        add              dword ptr [rsp + 116], 1
                        mov              r14d, dword ptr [rsp + 112]
                        mov              eax, dword ptr [rsp + 116]
                        cmp              eax, 1
                                                                                        je    n548_match_sequence_α
                                                                                        jmp   n544_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n546_match_defer_α:
                        mov              qword ptr [rsp + 320], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx563_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx563_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx563_10
.Lx563_9:
                        xor              eax, eax
.Lx563_10:
                        test             rax, rax
                                                                                        jz    .Lx563_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx563_4]
                        lea              rdx, [rip + .Lx563_5]
                                                                                        jmp   rax
.Lx563_4:
                        mov              rsp, qword ptr [rsp + 320]
                                                                                        jmp   n549_match_assign_cond_α
.Lx563_5:
                        mov              rsp, qword ptr [rsp + 320]
                                                                                        jmp   n550_match_assign_save_β
.Lx563_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx563_2:
                        test             rax, rax
                                                                                        je    .Lx563_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx563_7]
                        lea              rdx, [rip + .Lx563_8]
                                                                                        jmp   rax
.Lx563_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx563_2
.Lx563_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx563_2
.Lx563_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n550_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx563_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n549_match_assign_cond_α
.Lx563_6:
                        add              rsp, 16
                                                                                        jmp   n550_match_assign_save_β
n546_match_defer_β:
                        mov              rsp, qword ptr [rsp + 320]
                                                                                        jmp   n550_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n547_match_sequence_α:
                        mov              dword ptr [rsp + 128], r14d
                                                                                        jmp   n551_match_lit_α
n547_match_sequence_as:
                                                                                        jmp   n545_match_alternate_as
n547_match_sequence_β:
                                                                                        jmp   n553_match_assign_cond_β
n547_match_sequence_af:
                                                                                        jmp   n545_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n548_match_sequence_α:
                        mov              dword ptr [rsp + 240], r14d
                                                                                        jmp   n554_match_lit_α
n548_match_sequence_as:
                                                                                        jmp   n545_match_alternate_as
n548_match_sequence_β:
                                                                                        jmp   n549_match_assign_cond_β
n548_match_sequence_af:
                                                                                        jmp   n545_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n549_match_assign_cond_α:
                        lea              rdi, [rsp + 288]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n545_match_alternate_as
n549_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n546_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n550_match_assign_save_α:
                        lea              rdi, [rsp + 288]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n546_match_defer_α
n550_match_assign_save_β:
                        lea              rdi, [rsp + 288]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n554_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n551_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n545_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n545_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n552_match_assign_save_α
n551_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n545_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n552_match_assign_save_α:
                        lea              rdi, [rsp + 192]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n555_match_defer_α
n552_match_assign_save_β:
                        lea              rdi, [rsp + 192]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n551_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n553_match_assign_cond_α:
                        lea              rdi, [rsp + 192]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n545_match_alternate_as
n553_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n555_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n554_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n545_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n545_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n550_match_assign_save_α
n554_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n545_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n555_match_defer_α:
                        mov              qword ptr [rsp + 224], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx580_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx580_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx580_10
.Lx580_9:
                        xor              eax, eax
.Lx580_10:
                        test             rax, rax
                                                                                        jz    .Lx580_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx580_4]
                        lea              rdx, [rip + .Lx580_5]
                                                                                        jmp   rax
.Lx580_4:
                        mov              rsp, qword ptr [rsp + 224]
                                                                                        jmp   n553_match_assign_cond_α
.Lx580_5:
                        mov              rsp, qword ptr [rsp + 224]
                                                                                        jmp   n552_match_assign_save_β
.Lx580_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx580_2:
                        test             rax, rax
                                                                                        je    .Lx580_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx580_7]
                        lea              rdx, [rip + .Lx580_8]
                                                                                        jmp   rax
.Lx580_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx580_2
.Lx580_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx580_2
.Lx580_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n552_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx580_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n553_match_assign_cond_α
.Lx580_6:
                        add              rsp, 16
                                                                                        jmp   n552_match_assign_save_β
n555_match_defer_β:
                        mov              rsp, qword ptr [rsp + 224]
                                                                                        jmp   n552_match_assign_save_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 352], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 344]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 352], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 344]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 344], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rsp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 360]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], r8
                        mov              dword ptr [rsp + 344], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + n581_match_sequence_β]
                        mov              qword ptr [rsp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n581_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n582_match_defer_α
n581_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n581_match_sequence_β:
                                                                                        jmp   n583_match_arbno_β
n581_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n582_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx597_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx597_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx597_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx597_10
.Lx597_9:
                        xor              eax, eax
.Lx597_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx597_11:
                        test             rax, rax
                                                                                        jz    .Lx597_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx597_4]
                        lea              rdx, [rip + .Lx597_5]
                                                                                        jmp   rax
.Lx597_4:
                                                                                        jmp   n583_match_arbno_α
.Lx597_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx597_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx597_2
.Lx597_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx597_2
.Lx597_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx597_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n583_match_arbno_α
.Lx597_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n582_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n583_match_arbno_α:
                        mov              dword ptr [rsp + 64], r14d
                        mov              dword ptr [rsp + 68], r14d
                        mov              dword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 88], rsp
                        mov              qword ptr [rsp + 80], 0
                                                                                        jmp   proc_PAT$5_γ
n583_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 68]
                        mov              rax, qword ptr [rsp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n584_match_alternate_α
n583_match_arbno_as:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              r14d, eax
                                                                                        je    n584_match_alternate_β
                        mov              rbp, qword ptr [rsp + 72]
                        mov              eax, dword ptr [rsp + 72]
                        add              eax, 1
                        mov              dword ptr [rsp + 72], eax
                        mov              dword ptr [rsp + 68], r14d
                                                                                        jmp   proc_PAT$5_γ
n583_match_arbno_af:
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rsp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx599_2
                        sub              ecx, 1
                        mov              dword ptr [rsp + 72], ecx
                        mov              qword ptr [rsp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n584_match_alternate_β
.Lx599_2:
                        mov              r14d, dword ptr [rsp + 64]
                        mov              rsp, qword ptr [rsp + 88]
                                                                                        jmp   n582_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n584_match_alternate_α:
                        mov              dword ptr [rsp + 112], r14d
                        mov              dword ptr [rsp + 116], 0
                                                                                        jmp   n586_match_sequence_α
n584_match_alternate_as:
                                                                                        jmp   n583_match_arbno_as
n584_match_alternate_β:
                        mov              eax, dword ptr [rsp + 116]
                        cmp              eax, 0
                                                                                        je    n586_match_sequence_β
                                                                                        jmp   n587_match_sequence_β
n584_match_alternate_af:
                        add              dword ptr [rsp + 116], 1
                        mov              r14d, dword ptr [rsp + 112]
                        mov              eax, dword ptr [rsp + 116]
                        cmp              eax, 1
                                                                                        je    n587_match_sequence_α
                                                                                        jmp   n583_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n585_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx602_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx602_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx602_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx602_10
.Lx602_9:
                        xor              eax, eax
.Lx602_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx602_11:
                        test             rax, rax
                                                                                        jz    .Lx602_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx602_4]
                        lea              rdx, [rip + .Lx602_5]
                                                                                        jmp   rax
.Lx602_4:
                                                                                        jmp   n588_match_assign_cond_α
.Lx602_5:
                                                                                        jmp   n589_match_assign_save_β
.Lx602_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx602_2
.Lx602_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx602_2
.Lx602_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n589_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx602_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n588_match_assign_cond_α
.Lx602_6:
                        add              rsp, 16
                                                                                        jmp   n589_match_assign_save_β
n585_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n586_match_sequence_α:
                        mov              dword ptr [rsp + 128], r14d
                                                                                        jmp   n590_match_lit_α
n586_match_sequence_as:
                                                                                        jmp   n584_match_alternate_as
n586_match_sequence_β:
                                                                                        jmp   n592_match_assign_cond_β
n586_match_sequence_af:
                                                                                        jmp   n584_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n587_match_sequence_α:
                        mov              dword ptr [rsp + 240], r14d
                                                                                        jmp   n593_match_lit_α
n587_match_sequence_as:
                                                                                        jmp   n584_match_alternate_as
n587_match_sequence_β:
                                                                                        jmp   n588_match_assign_cond_β
n587_match_sequence_af:
                                                                                        jmp   n584_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n588_match_assign_cond_α:
                        lea              rdi, [rsp + 288]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n584_match_alternate_as
n588_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n585_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n589_match_assign_save_α:
                        lea              rdi, [rsp + 288]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n585_match_defer_α
n589_match_assign_save_β:
                        lea              rdi, [rsp + 288]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n593_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n590_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n584_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n584_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n591_match_assign_save_α
n590_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n584_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n591_match_assign_save_α:
                        lea              rdi, [rsp + 192]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n594_match_defer_α
n591_match_assign_save_β:
                        lea              rdi, [rsp + 192]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n590_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n592_match_assign_cond_α:
                        lea              rdi, [rsp + 192]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n584_match_alternate_as
n592_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n594_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n593_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n584_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n584_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n589_match_assign_save_α
n593_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n584_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n594_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx619_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx619_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx619_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx619_10
.Lx619_9:
                        xor              eax, eax
.Lx619_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx619_11:
                        test             rax, rax
                                                                                        jz    .Lx619_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx619_4]
                        lea              rdx, [rip + .Lx619_5]
                                                                                        jmp   rax
.Lx619_4:
                                                                                        jmp   n592_match_assign_cond_α
.Lx619_5:
                                                                                        jmp   n591_match_assign_save_β
.Lx619_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx619_2:
                        test             rax, rax
                                                                                        je    .Lx619_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx619_7]
                        lea              rdx, [rip + .Lx619_8]
                                                                                        jmp   rax
.Lx619_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx619_2
.Lx619_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx619_2
.Lx619_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n591_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx619_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n592_match_assign_cond_α
.Lx619_6:
                        add              rsp, 16
                                                                                        jmp   n591_match_assign_save_β
n594_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 352], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 344]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 352], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 344]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 344], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
8:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rsp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, [rbp + 360]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        .global          proc_PAT$6_α
                        .global          proc_PAT$6_β
                        .global          proc_PAT$6_γ
                        .global          proc_PAT$6_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n621_call_α
.Lx624_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n621_call_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lbynamefn238:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn238]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_PAT$6_scanfail
                                                                                        jmp   n622_match_value_α
n621_call_β:
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n622_match_value_α:
                        lea              rdi, [rsp + 32]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx626_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx626_4]
                        lea              rdx, [rip + .Lx626_5]
                                                                                        jmp   rax
.Lx626_4:
                                                                                        jmp   n623_match_fence1_α
.Lx626_5:
                                                                                        jmp   proc_PAT$6_scanfail
.Lx626_0:
                        lea              rdi, [rsp + 32]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx626_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n623_match_fence1_α
.Lx626_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
n622_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n623_match_fence1_α:
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_scanhit
n623_match_fence1_β:
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
8:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rsp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        .global          proc_PAT$7_α
                        .global          proc_PAT$7_β
                        .global          proc_PAT$7_γ
                        .global          proc_PAT$7_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n629_match_sequence_β]
                        mov              qword ptr [rsp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n629_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n630_lit_integer_α
n629_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n629_match_sequence_β:
                                                                                        jmp   n634_match_rpos_β
n629_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_integer_α:
                        mov              qword ptr [rsp + 48], 6
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n631_match_pos_α
n630_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx643_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n631_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n632_match_arbno_α
n631_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n632_match_arbno_α:
                        mov              dword ptr [rsp + 80], r14d
                        mov              dword ptr [rsp + 84], r14d
                        mov              dword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 104], rsp
                        mov              qword ptr [rsp + 96], 0
                                                                                        jmp   n633_lit_integer_α
n632_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 84]
                        mov              rax, qword ptr [rsp + 96]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n635_match_sequence_α
n632_match_arbno_as:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              r14d, eax
                                                                                        je    n635_match_sequence_β
                        mov              rbp, qword ptr [rsp + 88]
                        mov              eax, dword ptr [rsp + 88]
                        add              eax, 1
                        mov              dword ptr [rsp + 88], eax
                        mov              dword ptr [rsp + 84], r14d
                                                                                        jmp   n633_lit_integer_α
n632_match_arbno_af:
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rsp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx646_2
                        sub              ecx, 1
                        mov              dword ptr [rsp + 88], ecx
                        mov              qword ptr [rsp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n635_match_sequence_β
.Lx646_2:
                        mov              r14d, dword ptr [rsp + 80]
                        mov              rsp, qword ptr [rsp + 104]
                                                                                        jmp   n631_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n634_match_rpos_α
n633_lit_integer_β:
                                                                                        jmp   n632_match_arbno_β
.Lx647_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n634_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n632_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n634_match_rpos_β:
                                                                                        jmp   n632_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n635_match_sequence_α:
                        mov              dword ptr [rsp + 128], r14d
                                                                                        jmp   n637_match_defer_α
n635_match_sequence_as:
                                                                                        jmp   n632_match_arbno_as
n635_match_sequence_β:
                                                                                        jmp   n640_match_assign_cond_β
n635_match_sequence_af:
                                                                                        jmp   n632_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n636_match_defer_α:
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx651_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx651_4]
                        lea              rdx, [rip + .Lx651_5]
                                                                                        jmp   rax
.Lx651_4:
                                                                                        jmp   n640_match_assign_cond_α
.Lx651_5:
                                                                                        jmp   n639_match_assign_save_β
.Lx651_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx651_2:
                        test             rax, rax
                                                                                        je    .Lx651_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx651_7]
                        lea              rdx, [rip + .Lx651_8]
                                                                                        jmp   rax
.Lx651_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx651_2
.Lx651_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx651_2
.Lx651_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n639_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx651_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n640_match_assign_cond_α
.Lx651_6:
                        add              rsp, 16
                                                                                        jmp   n639_match_assign_save_β
n636_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n637_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx652_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx652_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx652_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx652_10
.Lx652_9:
                        xor              eax, eax
.Lx652_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx652_11:
                        test             rax, rax
                                                                                        jz    .Lx652_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx652_4]
                        lea              rdx, [rip + .Lx652_5]
                                                                                        jmp   rax
.Lx652_4:
                                                                                        jmp   n638_match_defer_α
.Lx652_5:
                                                                                        jmp   n632_match_arbno_af
.Lx652_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx652_2:
                        test             rax, rax
                                                                                        je    .Lx652_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx652_7]
                        lea              rdx, [rip + .Lx652_8]
                                                                                        jmp   rax
.Lx652_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx652_2
.Lx652_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx652_2
.Lx652_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n632_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx652_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n638_match_defer_α
.Lx652_6:
                        add              rsp, 16
                                                                                        jmp   n632_match_arbno_af
n637_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n638_match_defer_α:
                        mov              qword ptr [rsp + 160], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                                                                                        jne   .Lx653_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx653_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx653_10
.Lx653_9:
                        xor              eax, eax
.Lx653_10:
                        test             rax, rax
                                                                                        jz    .Lx653_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx653_4]
                        lea              rdx, [rip + .Lx653_5]
                                                                                        jmp   rax
.Lx653_4:
                        mov              rsp, qword ptr [rsp + 160]
                                                                                        jmp   n639_match_assign_save_α
.Lx653_5:
                        mov              rsp, qword ptr [rsp + 160]
                                                                                        jmp   n637_match_defer_β
.Lx653_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx653_2
.Lx653_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx653_2
.Lx653_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n637_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx653_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n639_match_assign_save_α
.Lx653_6:
                        add              rsp, 16
                                                                                        jmp   n637_match_defer_β
n638_match_defer_β:
                        mov              rsp, qword ptr [rsp + 160]
                                                                                        jmp   n637_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n639_match_assign_save_α:
                        lea              rdi, [rsp + 208]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n636_match_defer_α
n639_match_assign_save_β:
                        lea              rdi, [rsp + 208]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n638_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n640_match_assign_cond_α:
                        lea              rdi, [rsp + 208]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n632_match_arbno_as
n640_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n636_match_defer_β
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
8:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rsp + 272]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 4752
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
                        mov              esi, 96
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
                        mov              r12, qword ptr [1879048192]
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 4760
                        mov              rdi, rsp
                        mov              ecx, 4760
                        xor              eax, eax
                        rep stosb
main_α_body:
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
n658_lit_integer_α:
                        mov              qword ptr [rsp + 2864], 6
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 2872], rax
                                                                                        jmp   n680_call_α
n658_lit_integer_β:
                                                                                        jmp   n695_keyword_snobol4_α
.Lx957_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n659_goto_α:
                                                                                        jmp   n681_var_α
n659_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n660_goto_α:
                                                                                        jmp   n658_lit_integer_α
n660_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n661_goto_α:
                                                                                        jmp   n682_var_α
n661_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n662_goto_α:
                                                                                        jmp   n658_lit_integer_α
n662_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n663_goto_α:
                                                                                        jmp   n683_var_α
n663_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n664_goto_α:
                                                                                        jmp   n684_var_α
n664_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n665_goto_α:
                                                                                        jmp   n658_lit_integer_α
n665_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n666_goto_α:
                                                                                        jmp   n685_var_α
n666_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n667_goto_α:
                                                                                        jmp   n658_lit_integer_α
n667_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_goto_α:
                                                                                        jmp   n686_var_α
n668_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n669_goto_α:
                                                                                        jmp   n658_lit_integer_α
n669_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n670_goto_α:
                                                                                        jmp   n687_var_α
n670_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_goto_α:
                                                                                        jmp   n658_lit_integer_α
n671_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n672_goto_α:
                                                                                        jmp   n688_var_α
n672_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n673_goto_α:
                                                                                        jmp   n658_lit_integer_α
n673_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n674_goto_α:
                                                                                        jmp   n689_var_α
n674_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n675_goto_α:
                                                                                        jmp   n690_var_α
n675_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n676_goto_α:
                                                                                        jmp   n658_lit_integer_α
n676_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n677_goto_α:
                                                                                        jmp   n691_var_α
n677_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n678_goto_α:
                                                                                        jmp   n692_var_α
n678_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n679_goto_α:
                                                                                        jmp   n693_call_α
n679_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n680_call_α:
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lrkfn980:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn980]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n695_keyword_snobol4_α
                                                                                        jmp   n694_assign_α
n680_call_β:
                                                                                        jmp   n695_keyword_snobol4_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n681_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n696_lit_integer_α
n681_var_β:
                                                                                        jmp   n697_lit_integer_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n682_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n698_lit_integer_α
n682_var_β:
                        add              rsp, 16
                                                                                        jmp   n699_var_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n700_match_head_α
n683_var_β:
                                                                                        jmp   n684_var_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n684_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n701_assign_α
n684_var_β:
                        add              rsp, 16
                                                                                        jmp   n702_op14_α
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n703_var_α
n685_var_β:
                                                                                        jmp   n704_var_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n686_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                                                                                        jmp   n705_var_α
n686_var_β:
                                                                                        jmp   n706_var_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n687_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                                                                                        jmp   n707_var_α
n687_var_β:
                                                                                        jmp   n708_var_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n688_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                                                                                        jmp   n709_var_α
n688_var_β:
                                                                                        jmp   n710_var_α
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                                                                                        jmp   n711_var_α
n689_var_β:
                                                                                        jmp   n712_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n690_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                                                                                        jmp   n713_var_α
n690_var_β:
                                                                                        jmp   n714_lit_string_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx991_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx991_240
                        add              rsp, 16
                                                                                        jmp   n692_var_α
.Lx991_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n715_assign_α
n691_var_β:
                        add              rsp, 16
                                                                                        jmp   n692_var_α
.Lx991_0:
                        .quad            .Lx991_0_s
.Lx991_0_s:
                        .string          "INPUT"
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n692_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n716_var_α
n692_var_β:
                        add              rsp, 16
                                                                                        jmp   n717_call_α
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n693_call_α:
                        .section         .rodata
.Lrkfn994:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn994]
                        lea              rsi, [rsp + 4640]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx
                        cmp              eax, 99
                                                                                        je    n719_lit_string_α
                                                                                        jmp   n718_assign_α
n693_call_β:
                                                                                        jmp   n719_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n694_assign_α:
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n695_keyword_snobol4_α
n694_assign_β:
                                                                                        jmp   n695_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n695_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx996_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                                                                                        jmp   n720_assign_α
n695_keyword_snobol4_β:
                                                                                        jmp   n749_lit_string_α
.Lx996_0:
                        .quad            .Lx996_0_s
.Lx996_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n721_subscript_α
n696_lit_integer_β:
                                                                                        jmp   n697_lit_integer_α
.Lx997_0:
                        .quad            1
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n722_assign_α
n697_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n751_lit_string_α
.Lx998_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n723_binop_α
n698_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n699_var_α
.Lx999_0:
                        .quad            1
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n724_var_α
n699_var_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n700_match_head_α:
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rsp + 448], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx1002_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n726_match_sequence_α
n700_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1002_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1002_1
                                                                                        jmp   .Lx1002_0
.Lx1002_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rsp + 448]
                                                                                        jmp   n684_var_α
#-----------------------------------------------------------------------------------------------------------------------
n701_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n702_op14_α
n701_assign_β:
                                                                                        jmp   n702_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n702_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n703_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                                                                                        jmp   n727_subscript_α
n703_var_β:
                                                                                        jmp   n704_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n728_lit_integer_α
n704_var_β:
                        add              rsp, 16
                                                                                        jmp   n729_var_α
#-----------------------------------------------------------------------------------------------------------------------
n705_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                                                                                        jmp   n730_subscript_α
n705_var_β:
                                                                                        jmp   n706_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n706_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n731_lit_integer_α
n706_var_β:
                        add              rsp, 16
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n707_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n733_subscript_α
n707_var_β:
                                                                                        jmp   n708_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n708_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n734_lit_integer_α
n708_var_β:
                        add              rsp, 16
                                                                                        jmp   n735_var_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                                                                                        jmp   n736_subscript_α
n709_var_β:
                                                                                        jmp   n710_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n710_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n737_lit_integer_α
n710_var_β:
                        add              rsp, 16
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                                                                                        jmp   n739_subscript_α
n711_var_β:
                                                                                        jmp   n712_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n740_lit_integer_α
n712_var_β:
                        add              rsp, 16
                                                                                        jmp   n741_var_α
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                                                                                        jmp   n742_subscript_α
n713_var_β:
                                                                                        jmp   n714_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:
                        mov              qword ptr [rsp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rsp + 2808], rax
                                                                                        jmp   n743_call_α
n714_lit_string_β:
                                                                                        jmp   n725_lit_string_α
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n715_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n744_var_α
n715_assign_β:
                                                                                        jmp   n692_var_α
#-----------------------------------------------------------------------------------------------------------------------
n716_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n745_binop_α
n716_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n717_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n717_call_α:
                        .section         .rodata
.Lrkfn1021:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1021]
                        lea              rsi, [rsp + 4400]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              eax, 99
                                                                                        je    n747_var_α
                                                                                        jmp   n746_assign_α
n717_call_β:
                                                                                        jmp   n747_var_α
#-----------------------------------------------------------------------------------------------------------------------
n718_assign_α:
                        mov              rax, qword ptr [rsp + 4624]
                        mov              rdx, qword ptr [rsp + 4632]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n719_lit_string_α
n718_assign_β:
                                                                                        jmp   n719_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx1023_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n748_assign_α
n719_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1023_0:
                        .quad            .Lx1023_0_s
.Lx1023_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n720_assign_α:
                        mov              rax, qword ptr [rsp + 2880]
                        mov              rdx, qword ptr [rsp + 2888]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n749_lit_string_α
n720_assign_β:
                                                                                        jmp   n749_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n721_subscript_α:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n697_lit_integer_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n750_deref_α
n721_subscript_β:
                                                                                        jmp   n697_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n722_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n751_lit_string_α
n722_assign_β:
                                                                                        jmp   n751_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n723_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1027_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1027_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1027_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1027_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n752_assign_α
.Lx1027_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1027_2
                        add              rsp, 16
                                                                                        jmp   n752_assign_α
.Lx1027_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1027_240
                        add              rsp, 32
                                                                                        jmp   n699_var_α
.Lx1027_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n752_assign_α
n723_binop_β:
                        add              rsp, 32
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n724_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n753_subscript_α
n724_var_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx1029_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n754_call_α
n725_lit_string_β:
                                                                                        jmp   n791_op14_α
.Lx1029_0:
                        .quad            .Lx1029_0_s
.Lx1029_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n726_match_sequence_α:
                                                                                        jmp   n756_lit_integer_α
n726_match_sequence_as:
                                                                                        jmp   n755_match_release_α
n726_match_sequence_β:
                                                                                        jmp   n760_match_rpos_β
n726_match_sequence_af:
                                                                                        jmp   n700_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n727_subscript_α:
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n704_var_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n761_deref_α
n727_subscript_β:
                                                                                        jmp   n704_var_α
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n762_binop_α
n728_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n729_var_α
.Lx1033_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n729_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n763_var_α
n729_var_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n730_subscript_α:
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n706_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n765_deref_α
n730_subscript_β:
                                                                                        jmp   n706_var_α
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n766_binop_α
n731_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n732_var_α
.Lx1036_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n732_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                                                                                        jmp   n767_var_α
n732_var_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n733_subscript_α:
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n708_var_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n769_deref_α
n733_subscript_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n770_binop_α
n734_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n735_var_α
.Lx1039_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n735_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                                                                                        jmp   n771_var_α
n735_var_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n736_subscript_α:
                        mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1968]
                        mov              rcx, qword ptr [rsp + 1976]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n710_var_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                                                                                        jmp   n773_deref_α
n736_subscript_β:
                                                                                        jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1042_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n774_binop_α
n737_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n738_var_α
.Lx1042_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n738_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                                                                                        jmp   n775_var_α
n738_var_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n739_subscript_α:
                        mov              rdi, qword ptr [rsp + 2384]
                        mov              rsi, qword ptr [rsp + 2392]
                        mov              rdx, qword ptr [rsp + 2400]
                        mov              rcx, qword ptr [rsp + 2408]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n712_var_α
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                                                                                        jmp   n777_deref_α
n739_subscript_β:
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1045_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n778_binop_α
n740_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n741_var_α
.Lx1045_0:
                        .quad            1
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n741_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                                                                                        jmp   n779_var_α
n741_var_β:
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n742_subscript_α:
                        mov              rdi, qword ptr [rsp + 2672]
                        mov              rsi, qword ptr [rsp + 2680]
                        mov              rdx, qword ptr [rsp + 2688]
                        mov              rcx, qword ptr [rsp + 2696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n714_lit_string_α
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                                                                                        jmp   n780_var_α
n742_subscript_β:
                                                                                        jmp   n714_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n743_call_α:
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn1049:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n781_assign_α
n743_call_β:
                                                                                        jmp   n725_lit_string_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n744_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n782_var_α
n744_var_β:
                        add              rsp, 16
                                                                                        jmp   n783_var_α
#-----------------------------------------------------------------------------------------------------------------------
n745_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n784_var_α
n745_binop_β:
                        add              rsp, 32
                                                                                        jmp   n717_call_α
#-----------------------------------------------------------------------------------------------------------------------
n746_assign_α:
                        mov              rax, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n747_var_α
n746_assign_β:
                                                                                        jmp   n747_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n747_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                                                                                        jmp   n785_match_head_α
n747_var_β:
                                                                                        jmp   n693_call_α
#-----------------------------------------------------------------------------------------------------------------------
n748_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1054_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n786_lit_string_α
n748_assign_β:
                                                                                        jmp   n786_lit_string_α
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n787_assign_α
n749_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n818_lit_string_α
.Lx1055_0:
                        .quad            .Lx1055_0_s
.Lx1055_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n750_deref_α:
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n697_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n788_call_α
n750_deref_β:
                                                                                        jmp   n697_lit_integer_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n789_call_α
n751_lit_string_β:
                                                                                        jmp   n725_lit_string_α
.Lx1057_0:
                        .quad            .Lx1057_0_s
.Lx1057_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n752_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n699_var_α
n752_assign_β:
                                                                                        jmp   n699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n753_subscript_α:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n790_assign_α
n753_subscript_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n754_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1061:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1061]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n791_op14_α
                                                                                        jmp   n702_op14_α
n754_call_β:
                                                                                        jmp   n791_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n755_match_release_α:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1063_1:
                        test             rax, rax
                                                                                        je    .Lx1063_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1063_3]
                        lea              rdx, [rip + .Lx1063_4]
                                                                                        jmp   rax
.Lx1063_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1063_1
.Lx1063_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1063_1
.Lx1063_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rsp + 448]
                                                                                        jmp   n792_var_α
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_integer_α:
                        mov              qword ptr [rsp + 544], 6
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n757_match_pos_α
n756_lit_integer_β:
                                                                                        jmp   n700_match_head_β
.Lx1064_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n757_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n700_match_head_β
                                                                                        jmp   n758_match_any_α
n757_match_pos_β:
                                                                                        jmp   n700_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n758_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n700_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n700_match_head_β
                        add              r14d, 1
                                                                                        jmp   n759_lit_integer_α
n758_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n700_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n760_match_rpos_α
n759_lit_integer_β:
                                                                                        jmp   n758_match_any_β
.Lx1068_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n760_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n758_match_any_β
                                                                                        jmp   n755_match_release_α
n760_match_rpos_β:
                                                                                        jmp   n758_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n761_deref_α:
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n704_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n793_call_α
n761_deref_β:
                                                                                        jmp   n704_var_α
#-----------------------------------------------------------------------------------------------------------------------
n762_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1071_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1071_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1071_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1071_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n794_assign_α
.Lx1071_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1071_2
                        add              rsp, 16
                                                                                        jmp   n794_assign_α
.Lx1071_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1071_240
                        add              rsp, 32
                                                                                        jmp   n729_var_α
.Lx1071_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n794_assign_α
n762_binop_β:
                        add              rsp, 32
                                                                                        jmp   n729_var_α
#-----------------------------------------------------------------------------------------------------------------------
n763_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n795_subscript_α
n763_var_β:
                                                                                        jmp   n764_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:
                        mov              qword ptr [rsp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n796_call_α
n764_lit_string_β:
                                                                                        jmp   n725_lit_string_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n765_deref_α:
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n706_var_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n797_call_α
n765_deref_β:
                                                                                        jmp   n706_var_α
#-----------------------------------------------------------------------------------------------------------------------
n766_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1075_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1075_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1075_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1075_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n798_assign_α
.Lx1075_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1075_2
                        add              rsp, 16
                                                                                        jmp   n798_assign_α
.Lx1075_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1075_240
                        add              rsp, 32
                                                                                        jmp   n732_var_α
.Lx1075_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n798_assign_α
n766_binop_β:
                        add              rsp, 32
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n767_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                                                                                        jmp   n799_subscript_α
n767_var_β:
                                                                                        jmp   n768_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_string_α:
                        mov              qword ptr [rsp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n800_call_α
n768_lit_string_β:
                                                                                        jmp   n725_lit_string_α
.Lx1077_0:
                        .quad            .Lx1077_0_s
.Lx1077_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n769_deref_α:
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n708_var_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n801_call_α
n769_deref_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n770_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1079_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1079_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1079_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1079_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n802_assign_α
.Lx1079_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1079_2
                        add              rsp, 16
                                                                                        jmp   n802_assign_α
.Lx1079_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1079_240
                        add              rsp, 32
                                                                                        jmp   n735_var_α
.Lx1079_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n802_assign_α
n770_binop_β:
                        add              rsp, 32
                                                                                        jmp   n735_var_α
#-----------------------------------------------------------------------------------------------------------------------
n771_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                                                                                        jmp   n803_subscript_α
n771_var_β:
                                                                                        jmp   n772_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:
                        mov              qword ptr [rsp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n804_call_α
n772_lit_string_β:
                                                                                        jmp   n725_lit_string_α
.Lx1081_0:
                        .quad            .Lx1081_0_s
.Lx1081_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n773_deref_α:
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n710_var_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                                                                                        jmp   n805_call_α
n773_deref_β:
                                                                                        jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n774_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1083_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1083_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1083_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1083_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n806_assign_α
.Lx1083_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1083_2
                        add              rsp, 16
                                                                                        jmp   n806_assign_α
.Lx1083_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1083_240
                        add              rsp, 32
                                                                                        jmp   n738_var_α
.Lx1083_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n806_assign_α
n774_binop_β:
                        add              rsp, 32
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
n775_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                                                                                        jmp   n807_subscript_α
n775_var_β:
                                                                                        jmp   n776_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_string_α:
                        mov              qword ptr [rsp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx1085_0]
                        mov              qword ptr [rsp + 2328], rax
                                                                                        jmp   n808_call_α
n776_lit_string_β:
                                                                                        jmp   n725_lit_string_α
.Lx1085_0:
                        .quad            .Lx1085_0_s
.Lx1085_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n777_deref_α:
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n712_var_α
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                                                                                        jmp   n809_call_α
n777_deref_β:
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n778_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1087_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1087_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1087_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1087_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n810_assign_α
.Lx1087_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1087_2
                        add              rsp, 16
                                                                                        jmp   n810_assign_α
.Lx1087_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1087_240
                        add              rsp, 32
                                                                                        jmp   n741_var_α
.Lx1087_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n810_assign_α
n778_binop_β:
                        add              rsp, 32
                                                                                        jmp   n741_var_α
#-----------------------------------------------------------------------------------------------------------------------
n779_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                                                                                        jmp   n811_subscript_α
n779_var_β:
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                                                                                        jmp   n812_assign_var_α
n780_var_β:
                                                                                        jmp   n714_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n725_lit_string_α
n781_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n782_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n813_binop_α
n782_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n783_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n783_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx
                                                                                        jmp   n814_call_α
n783_var_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n815_binop_α
n784_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n717_call_α
#-----------------------------------------------------------------------------------------------------------------------
n785_match_head_α:
                        mov              rdi, qword ptr [rsp + 4496]
                        mov              rsi, qword ptr [rsp + 4504]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rsp + 4464], r12
                        mov              qword ptr [rsp + 4448], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 4440], rax
                        mov              dword ptr [rsp + 4432], 0
.Lx1095_0:
                        mov              r14d, dword ptr [rsp + 4432]
                                                                                        jmp   n816_match_defer_α
n785_match_head_β:
                        add              dword ptr [rsp + 4432], 1
                        mov              eax, dword ptr [rsp + 4432]
                        cmp              eax, r15d
                                                                                        jg    .Lx1095_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1095_1
                                                                                        jmp   .Lx1095_0
.Lx1095_1:
                        mov              rax, qword ptr [rsp + 4440]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 4448]
                        mov              r12, qword ptr [rsp + 4464]
                                                                                        jmp   n693_call_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n817_var_α
n786_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1096_0:
                        .quad            .Lx1096_0_s
.Lx1096_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n787_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n818_lit_string_α
n787_assign_β:
                                                                                        jmp   n818_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n788_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1099_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1099_5
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1099_6]
                        lea              rdx, [rip + .Lx1099_7]
                                                                                        jmp   rax
.Lx1099_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1099_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1099_21
.Lx1099_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        call             rt_arg_stage@PLT
.Lx1099_21:
                        mov              rdi, qword ptr [rip + .Lx1099_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1099_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1099_3]
                        lea              rdx, [rip + .Lx1099_4]
                                                                                        jmp   rax
.Lx1099_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1099_2
.Lx1099_1:
                        call             rt_faildescr@PLT
.Lx1099_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n697_lit_integer_α
                                                                                        jmp   n819_assign_α
n788_call_β:
                                                                                        jmp   n697_lit_integer_α
.Lx1099_0:
                        .quad            .Lx1099_0_s
.Lx1099_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n789_call_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn1101:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1101]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n820_assign_α
n789_call_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n790_assign_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n725_lit_string_α
n790_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n791_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n792_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                                                                                        jmp   n821_var_α
n792_var_β:
                                                                                        jmp   n702_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n793_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1107_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1107_5
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1107_6]
                        lea              rdx, [rip + .Lx1107_7]
                                                                                        jmp   rax
.Lx1107_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1107_2
.Lx1107_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1107_2
.Lx1107_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1107_20
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1107_21
.Lx1107_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        call             rt_arg_stage@PLT
.Lx1107_21:
                        mov              rdi, qword ptr [rip + .Lx1107_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1107_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1107_3]
                        lea              rdx, [rip + .Lx1107_4]
                                                                                        jmp   rax
.Lx1107_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1107_2
.Lx1107_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1107_2
.Lx1107_1:
                        call             rt_faildescr@PLT
.Lx1107_2:
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n704_var_α
                                                                                        jmp   n822_assign_α
n793_call_β:
                                                                                        jmp   n704_var_α
.Lx1107_0:
                        .quad            .Lx1107_0_s
.Lx1107_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n794_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n729_var_α
n794_assign_β:
                                                                                        jmp   n729_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_subscript_α:
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n764_lit_string_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n823_var_α
n795_subscript_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n796_call_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn1111:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1111]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n824_assign_α
n796_call_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1113_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1113_5
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1113_6]
                        lea              rdx, [rip + .Lx1113_7]
                                                                                        jmp   rax
.Lx1113_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1113_2
.Lx1113_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1113_2
.Lx1113_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1113_20
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1113_21
.Lx1113_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        call             rt_arg_stage@PLT
.Lx1113_21:
                        mov              rdi, qword ptr [rip + .Lx1113_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1113_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1113_3]
                        lea              rdx, [rip + .Lx1113_4]
                                                                                        jmp   rax
.Lx1113_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1113_2
.Lx1113_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1113_2
.Lx1113_1:
                        call             rt_faildescr@PLT
.Lx1113_2:
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n706_var_α
                                                                                        jmp   n825_assign_α
n797_call_β:
                                                                                        jmp   n706_var_α
.Lx1113_0:
                        .quad            .Lx1113_0_s
.Lx1113_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n798_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n732_var_α
n798_assign_β:
                                                                                        jmp   n732_var_α
#-----------------------------------------------------------------------------------------------------------------------
n799_subscript_α:
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n768_lit_string_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                                                                                        jmp   n826_var_α
n799_subscript_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n800_call_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn1117:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1117]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n827_assign_α
n800_call_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n801_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1119_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1119_5
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1119_6]
                        lea              rdx, [rip + .Lx1119_7]
                                                                                        jmp   rax
.Lx1119_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1119_2
.Lx1119_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1119_2
.Lx1119_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1119_20
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1119_21
.Lx1119_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        call             rt_arg_stage@PLT
.Lx1119_21:
                        mov              rdi, qword ptr [rip + .Lx1119_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1119_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1119_3]
                        lea              rdx, [rip + .Lx1119_4]
                                                                                        jmp   rax
.Lx1119_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1119_2
.Lx1119_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1119_2
.Lx1119_1:
                        call             rt_faildescr@PLT
.Lx1119_2:
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n708_var_α
                                                                                        jmp   n828_assign_α
n801_call_β:
                                                                                        jmp   n708_var_α
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n802_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n735_var_α
n802_assign_β:
                                                                                        jmp   n735_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_subscript_α:
                        mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n772_lit_string_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                                                                                        jmp   n829_var_α
n803_subscript_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n804_call_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn1123:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1123]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n830_assign_α
n804_call_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n805_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1125_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1125_5
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1125_6]
                        lea              rdx, [rip + .Lx1125_7]
                                                                                        jmp   rax
.Lx1125_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1125_2
.Lx1125_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1125_2
.Lx1125_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1125_20
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1125_21
.Lx1125_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        call             rt_arg_stage@PLT
.Lx1125_21:
                        mov              rdi, qword ptr [rip + .Lx1125_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1125_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1125_3]
                        lea              rdx, [rip + .Lx1125_4]
                                                                                        jmp   rax
.Lx1125_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1125_2
.Lx1125_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1125_2
.Lx1125_1:
                        call             rt_faildescr@PLT
.Lx1125_2:
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n710_var_α
                                                                                        jmp   n831_assign_α
n805_call_β:
                                                                                        jmp   n710_var_α
.Lx1125_0:
                        .quad            .Lx1125_0_s
.Lx1125_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n806_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n738_var_α
n806_assign_β:
                                                                                        jmp   n738_var_α
#-----------------------------------------------------------------------------------------------------------------------
n807_subscript_α:
                        mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n776_lit_string_α
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                                                                                        jmp   n832_var_α
n807_subscript_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n808_call_α:
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn1129:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1129]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n833_assign_α
n808_call_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n809_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1131_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1131_5
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1131_6]
                        lea              rdx, [rip + .Lx1131_7]
                                                                                        jmp   rax
.Lx1131_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1131_2
.Lx1131_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1131_2
.Lx1131_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1131_20
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1131_21
.Lx1131_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        call             rt_arg_stage@PLT
.Lx1131_21:
                        mov              rdi, qword ptr [rip + .Lx1131_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1131_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1131_3]
                        lea              rdx, [rip + .Lx1131_4]
                                                                                        jmp   rax
.Lx1131_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1131_2
.Lx1131_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1131_2
.Lx1131_1:
                        call             rt_faildescr@PLT
.Lx1131_2:
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n712_var_α
                                                                                        jmp   n834_assign_α
n809_call_β:
                                                                                        jmp   n712_var_α
.Lx1131_0:
                        .quad            .Lx1131_0_s
.Lx1131_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n810_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n741_var_α
n810_assign_β:
                                                                                        jmp   n741_var_α
#-----------------------------------------------------------------------------------------------------------------------
n811_subscript_α:
                        mov              rdi, qword ptr [rsp + 2560]
                        mov              rsi, qword ptr [rsp + 2568]
                        mov              rdx, qword ptr [rsp + 2576]
                        mov              rcx, qword ptr [rsp + 2584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n690_var_α
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                                                                                        jmp   n835_deref_α
n811_subscript_β:
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n812_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
                        mov              rdx, qword ptr [rsp + 2720]
                        mov              rcx, qword ptr [rsp + 2728]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n714_lit_string_α
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                                                                                        jmp   n714_lit_string_α
n812_assign_var_β:
                                                                                        jmp   n714_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n813_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n836_var_α
n813_binop_β:
                        add              rsp, 32
                                                                                        jmp   n783_var_α
#-----------------------------------------------------------------------------------------------------------------------
n814_call_α:
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4024], rax
                        .section         .rodata
.Lrkfn1137:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rsp + 4016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n691_var_α
                                                                                        jmp   n837_lit_integer_α
n814_call_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n815_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n838_assign_α
n815_binop_β:
                        add              rsp, 32
                                                                                        jmp   n717_call_α
#-----------------------------------------------------------------------------------------------------------------------
n816_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1139_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                                                                                        jne   .Lx1139_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1139_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1139_10
.Lx1139_9:
                        xor              eax, eax
.Lx1139_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx1139_11:
                        test             rax, rax
                                                                                        jz    .Lx1139_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1139_4]
                        lea              rdx, [rip + .Lx1139_5]
                                                                                        jmp   rax
.Lx1139_4:
                                                                                        jmp   n839_match_release_α
.Lx1139_5:
                                                                                        jmp   n785_match_head_β
.Lx1139_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1139_2:
                        test             rax, rax
                                                                                        je    .Lx1139_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1139_7]
                        lea              rdx, [rip + .Lx1139_8]
                                                                                        jmp   rax
.Lx1139_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1139_2
.Lx1139_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1139_2
.Lx1139_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n785_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1139_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n839_match_release_α
.Lx1139_6:
                        add              rsp, 16
                                                                                        jmp   n785_match_head_β
n816_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n817_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n840_var_α
n817_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:
                        mov              qword ptr [rsp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx1141_0]
                        mov              qword ptr [rsp + 2968], rax
                                                                                        jmp   n841_call_α
n818_lit_string_β:
                                                                                        jmp   n853_lit_string_α
.Lx1141_0:
                        .quad            .Lx1141_0_s
.Lx1141_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n819_assign_α:
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              rdi, qword ptr [rip + .Lx1142_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n697_lit_integer_α
n819_assign_β:
                                                                                        jmp   n697_lit_integer_α
.Lx1142_0:
                        .quad            .Lx1142_0_s
.Lx1142_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n820_assign_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n725_lit_string_α
n820_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n821_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n842_subscript_α
n821_var_β:
                                                                                        jmp   n702_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n822_assign_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n704_var_α
n822_assign_β:
                                                                                        jmp   n704_var_α
#-----------------------------------------------------------------------------------------------------------------------
n823_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n843_var_α
n823_var_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n824_assign_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n725_lit_string_α
n824_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n825_assign_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n706_var_α
n825_assign_β:
                                                                                        jmp   n706_var_α
#-----------------------------------------------------------------------------------------------------------------------
n826_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                                                                                        jmp   n844_var_α
n826_var_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n827_assign_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n725_lit_string_α
n827_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n828_assign_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n708_var_α
n828_assign_β:
                                                                                        jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                                                                                        jmp   n845_var_α
n829_var_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_assign_α:
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n725_lit_string_α
n830_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_assign_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n710_var_α
n831_assign_β:
                                                                                        jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                                                                                        jmp   n846_var_α
n832_var_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n725_lit_string_α
n833_assign_β:
                                                                                        jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_assign_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n712_var_α
n834_assign_β:
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n835_deref_α:
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n690_var_α
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                                                                                        jmp   n847_lit_string_α
n835_deref_β:
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n848_binop_α
n836_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n783_var_α
#-----------------------------------------------------------------------------------------------------------------------
n837_lit_integer_α:
                        mov              qword ptr [rsp + 3984], 6
                        mov              rax, qword ptr [rip + .Lx1160_0]
                        mov              qword ptr [rsp + 3992], rax
                                                                                        jmp   n849_op75_α
n837_lit_integer_β:
                                                                                        jmp   n691_var_α
.Lx1160_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n838_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n717_call_α
n838_assign_β:
                                                                                        jmp   n717_call_α
#-----------------------------------------------------------------------------------------------------------------------
n839_match_release_α:
                        mov              rax, qword ptr [rsp + 4440]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 4448]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 4496]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1163_1:
                        test             rax, rax
                                                                                        je    .Lx1163_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1163_3]
                        lea              rdx, [rip + .Lx1163_4]
                                                                                        jmp   rax
.Lx1163_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1163_1
.Lx1163_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1163_1
.Lx1163_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rsp + 4464]
                                                                                        jmp   n850_call_α
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n851_binop_α
n840_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n841_call_α:
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn1166:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1166]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n853_lit_string_α
                                                                                        jmp   n852_assign_α
n841_call_β:
                                                                                        jmp   n853_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n842_subscript_α:
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n702_op14_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n854_deref_α
n842_subscript_β:
                                                                                        jmp   n702_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n855_subscript_α
n843_var_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                                                                                        jmp   n856_subscript_α
n844_var_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                                                                                        jmp   n857_subscript_α
n845_var_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n858_subscript_α
n846_var_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n847_lit_string_α:
                        mov              qword ptr [rsp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rsp + 2632], rax
                                                                                        jmp   n859_call_α
n847_lit_string_β:
                                                                                        jmp   n690_var_α
.Lx1172_0:
                        .quad            .Lx1172_0_s
.Lx1172_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n848_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n860_assign_α
n848_binop_β:
                        add              rsp, 32
                                                                                        jmp   n783_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_op75_α:
                        mov              eax, dword ptr [rsp + 4000]
                        cmp              eax, 7
                                                                                        je    .Lx1175_1
                        cmp              eax, 6
                                                                                        jne   .Lx1175_0
                        mov              eax, dword ptr [rsp + 3984]
                        cmp              eax, 6
                                                                                        jne   .Lx1175_0
.Lx1175_1:
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3976], rax
                                                                                        jmp   n861_op75_α
.Lx1175_0:
                        lea              rdi, [rsp + 4000]
                        lea              rsi, [rsp + 3984]
                        lea              rdx, [rsp + 3968]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n861_op75_α
n849_op75_β:
                                                                                        jmp   n691_var_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n850_call_α:
                        .section         .rodata
.Lrkfn1177:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1177]
                        lea              rsi, [rsp + 4528]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              eax, 99
                                                                                        je    n863_lit_string_α
                                                                                        jmp   n862_assign_α
n850_call_β:
                                                                                        jmp   n863_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n851_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1178_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1178_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1178_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1178_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n864_binop_α
.Lx1178_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1178_2
                        add              rsp, 16
                                                                                        jmp   n864_binop_α
.Lx1178_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1178_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1178_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n864_binop_α
n851_binop_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rsp + 2912]
                        mov              rdx, qword ptr [rsp + 2920]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n853_lit_string_α
n852_assign_β:
                                                                                        jmp   n853_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n853_lit_string_α:
                        mov              qword ptr [rsp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 3032], rax
                                                                                        jmp   n865_call_α
n853_lit_string_β:
                                                                                        jmp   n876_lit_string_α
.Lx1180_0:
                        .quad            .Lx1180_0_s
.Lx1180_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n854_deref_α:
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n702_op14_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n866_assign_α
n854_deref_β:
                                                                                        jmp   n702_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n855_subscript_α:
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n764_lit_string_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n867_deref_α
n855_subscript_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n856_subscript_α:
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n768_lit_string_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n868_deref_α
n856_subscript_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n857_subscript_α:
                        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n772_lit_string_α
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                                                                                        jmp   n869_deref_α
n857_subscript_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n858_subscript_α:
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2192]
                        mov              rcx, qword ptr [rsp + 2200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n776_lit_string_α
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n870_deref_α
n858_subscript_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n859_call_α:
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn1187:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1187]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n690_var_α
                                                                                        jmp   n871_var_α
n859_call_β:
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n860_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n783_var_α
n860_assign_β:
                                                                                        jmp   n783_var_α
#-----------------------------------------------------------------------------------------------------------------------
n861_op75_α:
                        mov              eax, dword ptr [rsp + 3984]
                        cmp              eax, 7
                                                                                        je    .Lx1190_1
                        cmp              eax, 6
                                                                                        jne   .Lx1190_0
                        mov              eax, dword ptr [rsp + 4000]
                        cmp              eax, 6
                                                                                        jne   .Lx1190_0
.Lx1190_1:
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3960], rax
                                                                                        jmp   n872_op77_α
.Lx1190_0:
                        lea              rdi, [rsp + 3984]
                        lea              rsi, [rsp + 4000]
                        lea              rdx, [rsp + 3952]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n872_op77_α
n861_op75_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n862_assign_α:
                        mov              rax, qword ptr [rsp + 4512]
                        mov              rdx, qword ptr [rsp + 4520]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n863_lit_string_α
n862_assign_β:
                                                                                        jmp   n863_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n863_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx1192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n873_var_α
n863_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1192_0:
                        .quad            .Lx1192_0_s
.Lx1192_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n864_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n874_assign_α
n864_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n865_call_α:
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn1195:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1195]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n876_lit_string_α
                                                                                        jmp   n875_assign_α
n865_call_β:
                                                                                        jmp   n876_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n866_assign_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n702_op14_α
n866_assign_β:
                                                                                        jmp   n702_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n867_deref_α:
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n764_lit_string_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n877_call_α
n867_deref_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n868_deref_α:
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n768_lit_string_α
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n878_call_α
n868_deref_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n869_deref_α:
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n772_lit_string_α
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                                                                                        jmp   n879_call_α
n869_deref_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_deref_α:
                        mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n776_lit_string_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n880_call_α
n870_deref_β:
                                                                                        jmp   n776_lit_string_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n871_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n881_unop_α
n871_var_β:
                        add              rsp, 16
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n872_op77_α:
                        lea              rdi, [rsp + 3968]
                        lea              rsi, [rsp + 3952]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n691_var_α
                                                                                        jmp   n882_var_α
n872_op77_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n883_var_α
n873_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n874_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1205_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n874_assign_β:
                                                                                        jmp   main_γ
.Lx1205_0:
                        .quad            .Lx1205_0_s
.Lx1205_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n875_assign_α:
                        mov              rax, qword ptr [rsp + 2976]
                        mov              rdx, qword ptr [rsp + 2984]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n876_lit_string_α
n875_assign_β:
                                                                                        jmp   n876_lit_string_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n876_lit_string_α:
                        mov              qword ptr [rsp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx1207_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n884_call_α
n876_lit_string_β:
                                                                                        jmp   n894_lit_string_α
.Lx1207_0:
                        .quad            .Lx1207_0_s
.Lx1207_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n877_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1209_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1209_5
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1209_6]
                        lea              rdx, [rip + .Lx1209_7]
                                                                                        jmp   rax
.Lx1209_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1209_2
.Lx1209_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1209_2
.Lx1209_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1209_20
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1209_21
.Lx1209_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        call             rt_arg_stage@PLT
.Lx1209_21:
                        mov              rdi, qword ptr [rip + .Lx1209_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1209_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1209_3]
                        lea              rdx, [rip + .Lx1209_4]
                                                                                        jmp   rax
.Lx1209_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1209_2
.Lx1209_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1209_2
.Lx1209_1:
                        call             rt_faildescr@PLT
.Lx1209_2:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n764_lit_string_α
                                                                                        jmp   n885_var_α
n877_call_β:
                                                                                        jmp   n764_lit_string_α
.Lx1209_0:
                        .quad            .Lx1209_0_s
.Lx1209_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n878_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1211_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1211_5
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1211_6]
                        lea              rdx, [rip + .Lx1211_7]
                                                                                        jmp   rax
.Lx1211_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1211_2
.Lx1211_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1211_2
.Lx1211_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1211_20
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1211_21
.Lx1211_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        call             rt_arg_stage@PLT
.Lx1211_21:
                        mov              rdi, qword ptr [rip + .Lx1211_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1211_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1211_3]
                        lea              rdx, [rip + .Lx1211_4]
                                                                                        jmp   rax
.Lx1211_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1211_2
.Lx1211_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1211_2
.Lx1211_1:
                        call             rt_faildescr@PLT
.Lx1211_2:
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n768_lit_string_α
                                                                                        jmp   n886_var_α
n878_call_β:
                                                                                        jmp   n768_lit_string_α
.Lx1211_0:
                        .quad            .Lx1211_0_s
.Lx1211_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n879_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1213_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1213_5
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1213_6]
                        lea              rdx, [rip + .Lx1213_7]
                                                                                        jmp   rax
.Lx1213_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1213_2
.Lx1213_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1213_2
.Lx1213_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1213_20
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1213_21
.Lx1213_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        call             rt_arg_stage@PLT
.Lx1213_21:
                        mov              rdi, qword ptr [rip + .Lx1213_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1213_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1213_3]
                        lea              rdx, [rip + .Lx1213_4]
                                                                                        jmp   rax
.Lx1213_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1213_2
.Lx1213_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1213_2
.Lx1213_1:
                        call             rt_faildescr@PLT
.Lx1213_2:
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n772_lit_string_α
                                                                                        jmp   n887_var_α
n879_call_β:
                                                                                        jmp   n772_lit_string_α
.Lx1213_0:
                        .quad            .Lx1213_0_s
.Lx1213_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n880_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1215_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1215_5
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1215_6]
                        lea              rdx, [rip + .Lx1215_7]
                                                                                        jmp   rax
.Lx1215_6:
                        mov              rdi, qword ptr [1879052320]
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1215_2
.Lx1215_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1215_2
.Lx1215_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1215_20
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1215_21
.Lx1215_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        call             rt_arg_stage@PLT
.Lx1215_21:
                        mov              rdi, qword ptr [rip + .Lx1215_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1215_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1215_3]
                        lea              rdx, [rip + .Lx1215_4]
                                                                                        jmp   rax
.Lx1215_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1215_2
.Lx1215_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1215_2
.Lx1215_1:
                        call             rt_faildescr@PLT
.Lx1215_2:
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n776_lit_string_α
                                                                                        jmp   n888_var_α
n880_call_β:
                                                                                        jmp   n776_lit_string_α
.Lx1215_0:
                        .quad            .Lx1215_0_s
.Lx1215_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n881_unop_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n889_assign_α
n881_unop_β:
                        add              rsp, 16
                                                                                        jmp   n690_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n890_var_α
n882_var_β:
                        add              rsp, 16
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_binop_α
n883_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n884_call_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        .section         .rodata
.Lrkfn1220:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1220]
                        lea              rsi, [rsp + 3056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n894_lit_string_α
                                                                                        jmp   n893_assign_α
n884_call_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n895_binop_α
n885_var_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n896_binop_α
n886_var_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n887_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                                                                                        jmp   n897_binop_α
n887_var_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                                                                                        jmp   n898_binop_α
n888_var_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n889_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n690_var_α
n889_assign_β:
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n890_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n899_binop_α
n890_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n891_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n891_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n900_assign_α
n891_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n908_var_α
.Lx1227_0:
                        .quad            .Lx1227_0_s
.Lx1227_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n892_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1228_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx1228_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1228_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1228_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n901_binop_α
.Lx1228_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1228_2
                        add              rsp, 16
                                                                                        jmp   n901_binop_α
.Lx1228_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1228_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1228_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_binop_α
n892_binop_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:
                        mov              rax, qword ptr [rsp + 3040]
                        mov              rdx, qword ptr [rsp + 3048]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n894_lit_string_α
n893_assign_β:
                                                                                        jmp   n894_lit_string_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:
                        mov              qword ptr [rsp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rsp + 3160], rax
                                                                                        jmp   n902_call_α
n894_lit_string_β:
                                                                                        jmp   n911_lit_string_α
.Lx1230_0:
                        .quad            .Lx1230_0_s
.Lx1230_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n895_binop_α:
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 100
                                                                                        je    .Lx1231_0
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 100
                                                                                        je    .Lx1231_0
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx1231_2
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 6
                                                                                        jne   .Lx1231_2
.Lx1231_1:
                        mov              rax, qword ptr [rsp + 840]
                        mov              rcx, qword ptr [rsp + 952]
                        add              rax, rcx
                        mov              qword ptr [rsp + 816], 6
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n903_assign_var_α
.Lx1231_0:
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 0
                        lea              r9, [rsp + 816]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n903_assign_var_α
.Lx1231_2:
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n764_lit_string_α
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n903_assign_var_α
n895_binop_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n896_binop_α:
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 100
                                                                                        je    .Lx1232_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 100
                                                                                        je    .Lx1232_0
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 6
                                                                                        jne   .Lx1232_2
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx1232_2
.Lx1232_1:
                        mov              rax, qword ptr [rsp + 1272]
                        mov              rcx, qword ptr [rsp + 1384]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 1248], 6
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n904_assign_var_α
.Lx1232_0:
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              r8d, 1
                        lea              r9, [rsp + 1248]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n904_assign_var_α
.Lx1232_2:
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n768_lit_string_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                                                                                        jmp   n904_assign_var_α
n896_binop_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n897_binop_α:
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 100
                                                                                        je    .Lx1233_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              eax, 100
                                                                                        je    .Lx1233_0
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 6
                                                                                        jne   .Lx1233_2
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx1233_2
.Lx1233_1:
                        mov              rax, qword ptr [rsp + 1704]
                        mov              rcx, qword ptr [rsp + 1816]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 1680], 6
                        mov              qword ptr [rsp + 1688], rax
                                                                                        jmp   n905_assign_var_α
.Lx1233_0:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 2
                        lea              r9, [rsp + 1680]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n905_assign_var_α
.Lx1233_2:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n772_lit_string_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                                                                                        jmp   n905_assign_var_α
n897_binop_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n898_binop_α:
                        mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 100
                                                                                        je    .Lx1234_0
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 100
                                                                                        je    .Lx1234_0
                        mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 6
                                                                                        jne   .Lx1234_2
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 6
                                                                                        jne   .Lx1234_2
.Lx1234_1:
                        mov              rax, qword ptr [rsp + 2136]
                        mov              rcx, qword ptr [rsp + 2248]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rsp + 2112], 6
                        mov              qword ptr [rsp + 2120], rax
                                                                                        jmp   n906_assign_var_α
.Lx1234_0:
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        mov              r8d, 3
                        lea              r9, [rsp + 2112]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n906_assign_var_α
.Lx1234_2:
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n776_lit_string_α
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                                                                                        jmp   n906_assign_var_α
n898_binop_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n899_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n907_assign_α
n899_binop_β:
                        add              rsp, 32
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n900_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n908_var_α
n900_assign_β:
                                                                                        jmp   n908_var_α
#-----------------------------------------------------------------------------------------------------------------------
n901_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n909_assign_α
n901_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n902_call_α:
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax
                        .section         .rodata
.Lrkfn1239:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1239]
                        lea              rsi, [rsp + 3120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n911_lit_string_α
                                                                                        jmp   n910_assign_α
n902_call_β:
                                                                                        jmp   n911_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n903_assign_var_α:
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n764_lit_string_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n764_lit_string_α
n903_assign_var_β:
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1248]
                        mov              rcx, qword ptr [rsp + 1256]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n768_lit_string_α
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                                                                                        jmp   n768_lit_string_α
n904_assign_var_β:
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n772_lit_string_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                                                                                        jmp   n772_lit_string_α
n905_assign_var_β:
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n906_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2096]
                        mov              rsi, qword ptr [rsp + 2104]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n776_lit_string_α
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                                                                                        jmp   n776_lit_string_α
n906_assign_var_β:
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n891_lit_string_α
n907_assign_β:
                                                                                        jmp   n891_lit_string_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n908_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                                                                                        jmp   n912_call_α
n908_var_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n909_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1246_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n909_assign_β:
                                                                                        jmp   main_γ
.Lx1246_0:
                        .quad            .Lx1246_0_s
.Lx1246_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n910_assign_α:
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n911_lit_string_α
n910_assign_β:
                                                                                        jmp   n911_lit_string_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        mov              qword ptr [rsp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx1248_0]
                        mov              qword ptr [rsp + 3224], rax
                                                                                        jmp   n913_call_α
n911_lit_string_β:
                                                                                        jmp   n916_lit_string_α
.Lx1248_0:
                        .quad            .Lx1248_0_s
.Lx1248_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n912_call_α:
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4200], rax
                        .section         .rodata
.Lrkfn1250:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1250]
                        lea              rsi, [rsp + 4192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx
                        cmp              eax, 99
                                                                                        je    n691_var_α
                                                                                        jmp   n914_lit_integer_α
n912_call_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n913_call_α:
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3192], rax
                        .section         .rodata
.Lrkfn1252:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1252]
                        lea              rsi, [rsp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n916_lit_string_α
                                                                                        jmp   n915_assign_α
n913_call_β:
                                                                                        jmp   n916_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n914_lit_integer_α:
                        mov              qword ptr [rsp + 4160], 6
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rsp + 4168], rax
                                                                                        jmp   n917_op75_α
n914_lit_integer_β:
                                                                                        jmp   n691_var_α
.Lx1253_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n915_assign_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n916_lit_string_α
n915_assign_β:
                                                                                        jmp   n916_lit_string_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n916_lit_string_α:
                        mov              qword ptr [rsp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx1255_0]
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n918_call_α
n916_lit_string_β:
                                                                                        jmp   n921_lit_string_α
.Lx1255_0:
                        .quad            .Lx1255_0_s
.Lx1255_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n917_op75_α:
                        mov              eax, dword ptr [rsp + 4176]
                        cmp              eax, 7
                                                                                        je    .Lx1257_1
                        cmp              eax, 6
                                                                                        jne   .Lx1257_0
                        mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 6
                                                                                        jne   .Lx1257_0
.Lx1257_1:
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4152], rax
                                                                                        jmp   n919_op75_α
.Lx1257_0:
                        lea              rdi, [rsp + 4176]
                        lea              rsi, [rsp + 4160]
                        lea              rdx, [rsp + 4144]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n919_op75_α
n917_op75_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n918_call_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3256], rax
                        .section         .rodata
.Lrkfn1259:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1259]
                        lea              rsi, [rsp + 3248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n921_lit_string_α
                                                                                        jmp   n920_assign_α
n918_call_β:
                                                                                        jmp   n921_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_op75_α:
                        mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 7
                                                                                        je    .Lx1261_1
                        cmp              eax, 6
                                                                                        jne   .Lx1261_0
                        mov              eax, dword ptr [rsp + 4176]
                        cmp              eax, 6
                                                                                        jne   .Lx1261_0
.Lx1261_1:
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4136], rax
                                                                                        jmp   n922_op77_α
.Lx1261_0:
                        lea              rdi, [rsp + 4160]
                        lea              rsi, [rsp + 4176]
                        lea              rdx, [rsp + 4128]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n922_op77_α
n919_op75_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n920_assign_α:
                        mov              rax, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n921_lit_string_α
n920_assign_β:
                                                                                        jmp   n921_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:
                        mov              qword ptr [rsp + 3344], 1
                        mov              rax, qword ptr [rip + .Lx1263_0]
                        mov              qword ptr [rsp + 3352], rax
                                                                                        jmp   n923_call_α
n921_lit_string_β:
                                                                                        jmp   n926_lit_string_α
.Lx1263_0:
                        .quad            .Lx1263_0_s
.Lx1263_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n922_op77_α:
                        lea              rdi, [rsp + 4144]
                        lea              rsi, [rsp + 4128]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n691_var_α
                                                                                        jmp   n924_var_α
n922_op77_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n923_call_α:
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn1267:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1267]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n926_lit_string_α
                                                                                        jmp   n925_assign_α
n923_call_β:
                                                                                        jmp   n926_lit_string_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n927_var_α
n924_var_β:
                        add              rsp, 16
                                                                                        jmp   n928_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n925_assign_α:
                        mov              rax, qword ptr [rsp + 3296]
                        mov              rdx, qword ptr [rsp + 3304]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n926_lit_string_α
n925_assign_β:
                                                                                        jmp   n926_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:
                        mov              qword ptr [rsp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx1270_0]
                        mov              qword ptr [rsp + 3416], rax
                                                                                        jmp   n929_call_α
n926_lit_string_β:
                                                                                        jmp   n933_lit_string_α
.Lx1270_0:
                        .quad            .Lx1270_0_s
.Lx1270_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n927_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n930_binop_α
n927_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n928_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n928_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx1272_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n931_assign_α
n928_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n691_var_α
.Lx1272_0:
                        .quad            .Lx1272_0_s
.Lx1272_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n929_call_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn1274:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1274]
                        lea              rsi, [rsp + 3376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    n933_lit_string_α
                                                                                        jmp   n932_assign_α
n929_call_β:
                                                                                        jmp   n933_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n930_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n934_assign_α
n930_binop_β:
                        add              rsp, 32
                                                                                        jmp   n928_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n931_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n691_var_α
n931_assign_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n932_assign_α:
                        mov              rax, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n933_lit_string_α
n932_assign_β:
                                                                                        jmp   n933_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n933_lit_string_α:
                        mov              qword ptr [rsp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx1278_0]
                        mov              qword ptr [rsp + 3496], rax
                                                                                        jmp   n935_lit_integer_α
n933_lit_string_β:
                                                                                        jmp   n937_lit_integer_α
.Lx1278_0:
                        .quad            .Lx1278_0_s
.Lx1278_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n934_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n928_lit_string_α
n934_assign_β:
                                                                                        jmp   n928_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n935_lit_integer_α:
                        mov              qword ptr [rsp + 3504], 6
                        mov              rax, qword ptr [rip + .Lx1280_0]
                        mov              qword ptr [rsp + 3512], rax
                                                                                        jmp   n936_call_α
n935_lit_integer_β:
                                                                                        jmp   n937_lit_integer_α
.Lx1280_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n936_call_α:
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3448], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3464], rax
                        .section         .rodata
.Lrkfn1282:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1282]
                        lea              rsi, [rsp + 3440]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    n937_lit_integer_α
                                                                                        jmp   n937_lit_integer_α
n936_call_β:
                                                                                        jmp   n937_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n937_lit_integer_α:
                        mov              qword ptr [rsp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx1283_0]
                        mov              qword ptr [rsp + 3576], rax
                                                                                        jmp   n938_call_α
n937_lit_integer_β:
                                                                                        jmp   n940_call_α
.Lx1283_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n938_call_α:
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3544], rax
                        .section         .rodata
.Lbynamefn363:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn363]
                        lea              rsi, [rsp + 3536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n940_call_α
                                                                                        jmp   n939_assign_α
n938_call_β:
                                                                                        jmp   n940_call_α
#-----------------------------------------------------------------------------------------------------------------------
n939_assign_α:
                        mov              rax, qword ptr [rsp + 3520]
                        mov              rdx, qword ptr [rsp + 3528]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n940_call_α
n939_assign_β:
                                                                                        jmp   n940_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n940_call_α:
                        .section         .rodata
.Lrkfn1287:             .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1287]
                        lea              rsi, [rsp + 3600]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n942_var_α
                                                                                        jmp   n941_assign_α
n940_call_β:
                                                                                        jmp   n942_var_α
#-----------------------------------------------------------------------------------------------------------------------
n941_assign_α:
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n942_var_α
n941_assign_β:
                                                                                        jmp   n942_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n942_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                                                                                        jmp   n943_lit_string_α
n942_var_β:
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n943_lit_string_α:
                        mov              qword ptr [rsp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx1290_0]
                        mov              qword ptr [rsp + 3640], rax
                                                                                        jmp   n945_subscript_α
n943_lit_string_β:
                                                                                        jmp   n944_var_α
.Lx1290_0:
                        .quad            .Lx1290_0_s
.Lx1290_0_s:
                        .string          "x"
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                                                                                        jmp   n946_lit_string_α
n944_var_β:
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n945_subscript_α:
                        mov              rdi, qword ptr [rsp + 3616]
                        mov              rsi, qword ptr [rsp + 3624]
                        mov              rdx, qword ptr [rsp + 3632]
                        mov              rcx, qword ptr [rsp + 3640]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n944_var_α
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                                                                                        jmp   n948_lit_integer_α
n945_subscript_β:
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n946_lit_string_α:
                        mov              qword ptr [rsp + 3712], 1
                        mov              rax, qword ptr [rip + .Lx1293_0]
                        mov              qword ptr [rsp + 3720], rax
                                                                                        jmp   n949_subscript_α
n946_lit_string_β:
                                                                                        jmp   n947_var_α
.Lx1293_0:
                        .quad            .Lx1293_0_s
.Lx1293_0_s:
                        .string          "y"
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n947_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                                                                                        jmp   n950_lit_string_α
n947_var_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n948_lit_integer_α:
                        mov              qword ptr [rsp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx1295_0]
                        mov              qword ptr [rsp + 3672], rax
                                                                                        jmp   n951_assign_var_α
n948_lit_integer_β:
                                                                                        jmp   n944_var_α
.Lx1295_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n949_subscript_α:
                        mov              rdi, qword ptr [rsp + 3696]
                        mov              rsi, qword ptr [rsp + 3704]
                        mov              rdx, qword ptr [rsp + 3712]
                        mov              rcx, qword ptr [rsp + 3720]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n947_var_α
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                                                                                        jmp   n952_lit_integer_α
n949_subscript_β:
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n950_lit_string_α:
                        mov              qword ptr [rsp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx1297_0]
                        mov              qword ptr [rsp + 3800], rax
                                                                                        jmp   n953_subscript_α
n950_lit_string_β:
                                                                                        jmp   n691_var_α
.Lx1297_0:
                        .quad            .Lx1297_0_s
.Lx1297_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n951_assign_var_α:
                        mov              rdi, qword ptr [rsp + 3648]
                        mov              rsi, qword ptr [rsp + 3656]
                        mov              rdx, qword ptr [rsp + 3664]
                        mov              rcx, qword ptr [rsp + 3672]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n944_var_α
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                                                                                        jmp   n944_var_α
n951_assign_var_β:
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n952_lit_integer_α:
                        mov              qword ptr [rsp + 3744], 6
                        mov              rax, qword ptr [rip + .Lx1299_0]
                        mov              qword ptr [rsp + 3752], rax
                                                                                        jmp   n954_assign_var_α
n952_lit_integer_β:
                                                                                        jmp   n947_var_α
.Lx1299_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n953_subscript_α:
                        mov              rdi, qword ptr [rsp + 3776]
                        mov              rsi, qword ptr [rsp + 3784]
                        mov              rdx, qword ptr [rsp + 3792]
                        mov              rcx, qword ptr [rsp + 3800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n691_var_α
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                                                                                        jmp   n955_lit_integer_α
n953_subscript_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n954_assign_var_α:
                        mov              rdi, qword ptr [rsp + 3728]
                        mov              rsi, qword ptr [rsp + 3736]
                        mov              rdx, qword ptr [rsp + 3744]
                        mov              rcx, qword ptr [rsp + 3752]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n947_var_α
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                                                                                        jmp   n947_var_α
n954_assign_var_β:
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n955_lit_integer_α:
                        mov              qword ptr [rsp + 3824], 6
                        mov              rax, qword ptr [rip + .Lx1302_0]
                        mov              qword ptr [rsp + 3832], rax
                                                                                        jmp   n956_assign_var_α
n955_lit_integer_β:
                                                                                        jmp   n691_var_α
.Lx1302_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n956_assign_var_α:
                        mov              rdi, qword ptr [rsp + 3808]
                        mov              rsi, qword ptr [rsp + 3816]
                        mov              rdx, qword ptr [rsp + 3824]
                        mov              rcx, qword ptr [rsp + 3832]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n691_var_α
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                                                                                        jmp   n691_var_α
n956_assign_var_β:
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 4760
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 4760
                        ret
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "V"
.S2:                    .string          "I"
.S3:                    .string          "X"
.S4:                    .string          "A"
.S5:                    .string          "*SGN"
.S6:                    .string          "F"
.S7:                    .string          "*DIV"
.S8:                    .string          "*MUL"
.S9:                    .string          "T"
.S10:                   .string          "*SUB"
.S11:                   .string          "*ADD"
.S12:                   .string          "epsilon"
.S13:                   .string          "eol"
.S14:                   .string          "*EMIT"
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
