                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__EMIT_α
proc_LBL__EMIT_α:
                        .global          proc_LBL__EMIT_α
                        .global          proc_LBL__EMIT_β
                        .global          proc_LBL__EMIT_γ
                        .global          proc_LBL__EMIT_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 184], rax
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
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
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
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n3_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n8_call_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 296], rax
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
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx25_21
.Lx25_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
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
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn27:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n11_assign_α
n9_call_β:
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx28_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n3_lit_integer_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n13_call_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn32:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_β:
                                                                                        jmp   proc_LBL__EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__PSH_α
proc_LBL__PSH_α:
                        .global          proc_LBL__PSH_α
                        .global          proc_LBL__PSH_β
                        .global          proc_LBL__PSH_γ
                        .global          proc_LBL__PSH_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx54_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx54_0
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
                        call             rt_add@PLT
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n45_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 40], rax
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
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n43_lit_string_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn60:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n49_op14_α
                                                                                        jmp   n48_op14_α
n46_call_β:
                                                                                        jmp   n49_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_β:
                                                                                        jmp   proc_LBL__PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DRF_α
proc_LBL__DRF_α:
                        .global          proc_LBL__DRF_α
                        .global          proc_LBL__DRF_β
                        .global          proc_LBL__DRF_γ
                        .global          proc_LBL__DRF_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n68_match_head_α
n67_var_β:
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_match_head_α:
                        mov              qword ptr [rbp + 464], r13
                        mov              qword ptr [rbp + 472], r14
                        mov              qword ptr [rbp + 480], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax
                        mov              qword ptr [rbp + 456], rbp
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
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
                        mov              r10, qword ptr [1879048192]
.Lx87_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
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
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx95_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx95_5
                        lea              rdi, [r10 + 24]
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
                        mov              r10, qword ptr [1879048192]
.Lx95_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx95_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 520], rax
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
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 536], rax
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
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n80_var_α
n79_var_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n81_subscript_α
n80_var_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n72_op14_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n82_deref_α
n81_subscript_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n82_deref_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n72_op14_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n83_assign_α
n82_deref_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n72_op14_α
n83_assign_β:
                                                                                        jmp   n72_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_β:
                                                                                        jmp   proc_LBL__DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ADD_α
proc_LBL__ADD_α:
                        .global          proc_LBL__ADD_α
                        .global          proc_LBL__ADD_β
                        .global          proc_LBL__ADD_γ
                        .global          proc_LBL__ADD_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
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
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n110_var_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_deref_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n110_var_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n118_call_α
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
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
                        call             rt_sub@PLT
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
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n120_subscript_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 1064], rax
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
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 744]
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
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx148_21
.Lx148_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
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
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
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
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn152:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n124_assign_α
n121_call_β:
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n127_call_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n128_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn159:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n130_op14_α
                                                                                        jmp   n129_op14_α
n127_call_β:
                                                                                        jmp   n130_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n128_subscript_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
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
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
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
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 968]
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
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx167_21
.Lx167_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx169_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx169_0
                        mov              rax, qword ptr [rbp + 872]
                        mov              rcx, qword ptr [rbp + 984]
                        add              rax, rcx
                        mov              qword ptr [rbp + 848], 6
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n135_assign_var_α
.Lx169_0:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n135_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_β:
                                                                                        jmp   proc_LBL__ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__SUB_α
proc_LBL__SUB_α:
                        .global          proc_LBL__SUB_α
                        .global          proc_LBL__SUB_β
                        .global          proc_LBL__SUB_γ
                        .global          proc_LBL__SUB_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
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
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n174_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
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
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_deref_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n174_var_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n182_call_α
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
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
                        call             rt_sub@PLT
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
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n184_subscript_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              dword ptr [rbp + 1492], 2
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 1496], rax
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
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1176]
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
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx212_21
.Lx212_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
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
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
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
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn216:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n188_assign_α
n185_call_β:
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n174_var_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n191_call_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n192_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn223:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n194_op14_α
                                                                                        jmp   n193_op14_α
n191_call_β:
                                                                                        jmp   n194_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n192_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
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
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
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
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1400]
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
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx231_21
.Lx231_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
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
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
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
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n198_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, qword ptr [rbp + 1416]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n199_assign_var_α
.Lx233_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n199_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n181_lit_string_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_β:
                                                                                        jmp   proc_LBL__SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__MUL_α
proc_LBL__MUL_α:
                        .global          proc_LBL__MUL_α
                        .global          proc_LBL__MUL_β
                        .global          proc_LBL__MUL_γ
                        .global          proc_LBL__MUL_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
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
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n238_var_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
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
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n244_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_deref_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n238_var_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n246_call_α
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx272_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx272_0
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
                        call             rt_sub@PLT
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
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n248_subscript_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              dword ptr [rbp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 1928], rax
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
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1608]
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
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx276_21
.Lx276_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
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
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
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
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn280:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n252_assign_α
n249_call_β:
                                                                                        jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n255_call_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n256_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn287:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n258_op14_α
                                                                                        jmp   n257_op14_α
n255_call_β:
                                                                                        jmp   n258_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n256_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
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
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
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
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1832]
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
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx295_21
.Lx295_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
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
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
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
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n262_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx297_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx297_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, qword ptr [rbp + 1848]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n263_assign_var_α
.Lx297_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n263_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_string_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_β:
                                                                                        jmp   proc_LBL__MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DIV_α
proc_LBL__DIV_α:
                        .global          proc_LBL__DIV_α
                        .global          proc_LBL__DIV_β
                        .global          proc_LBL__DIV_γ
                        .global          proc_LBL__DIV_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
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
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n302_var_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
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
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_deref_α:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n302_var_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n310_call_α
#-----------------------------------------------------------------------------------------------------------------------
n307_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx336_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx336_0
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
                        call             rt_sub@PLT
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
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n312_subscript_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 2360], rax
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
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2040]
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
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
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
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
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
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn344:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn344]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n317_lit_string_α
                                                                                        jmp   n316_assign_α
n313_call_β:
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n302_var_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n319_call_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n320_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn351:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n322_op14_α
                                                                                        jmp   n321_op14_α
n319_call_β:
                                                                                        jmp   n322_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n320_subscript_α:
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
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
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
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
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2264]
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
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx359_21
.Lx359_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
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
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
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
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n326_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n326_binop_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n327_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n309_lit_string_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_β:
                                                                                        jmp   proc_LBL__DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__NEG_α
proc_LBL__NEG_α:
                        .global          proc_LBL__NEG_α
                        .global          proc_LBL__NEG_β
                        .global          proc_LBL__NEG_γ
                        .global          proc_LBL__NEG_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
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
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n367_subscript_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              dword ptr [rbp + 2612], 2
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n368_call_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n367_subscript_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn387:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n371_lit_string_α
                                                                                        jmp   n370_assign_α
n368_call_β:
                                                                                        jmp   n371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n372_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n373_call_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n374_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn393:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n376_op14_α
                                                                                        jmp   n375_op14_α
n373_call_β:
                                                                                        jmp   n376_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n374_subscript_α:
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2496]
                        mov              rcx, qword ptr [rbp + 2504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n377_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n375_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n376_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n377_deref_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n378_call_α
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx401_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx401_5
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_6]
                        lea              rdx, [rip + .Lx401_7]
                                                                                        jmp   rax
.Lx401_6:
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
                                                                                        jmp   .Lx401_2
.Lx401_7:
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
                                                                                        jmp   .Lx401_2
.Lx401_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_20
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx401_21
.Lx401_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             rt_arg_stage@PLT
.Lx401_21:
                        mov              rdi, qword ptr [rip + .Lx401_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx401_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_3]
                        lea              rdx, [rip + .Lx401_4]
                                                                                        jmp   rax
.Lx401_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_1:
                        call             rt_faildescr@PLT
.Lx401_2:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                                                                                        jmp   n379_unop_α
n378_call_β:
                                                                                        jmp   n366_lit_string_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n379_unop_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n380_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n366_lit_string_α
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_β:
                                                                                        jmp   proc_LBL__NEG_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4600]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
                        .global          proc_EMIT_α
                        .global          proc_EMIT_β
                        .global          proc_EMIT_γ
                        .global          proc_EMIT_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n404_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n405_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n405_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx409_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
                        .global          proc_PSH_α
                        .global          proc_PSH_β
                        .global          proc_PSH_γ
                        .global          proc_PSH_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n410_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n411_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n411_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx415_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
                        .global          proc_DRF_α
                        .global          proc_DRF_β
                        .global          proc_DRF_γ
                        .global          proc_DRF_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n416_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n417_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n417_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx421_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
                        .global          proc_ADD_α
                        .global          proc_ADD_β
                        .global          proc_ADD_γ
                        .global          proc_ADD_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n422_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n423_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n423_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx427_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
                        .global          proc_SUB_α
                        .global          proc_SUB_β
                        .global          proc_SUB_γ
                        .global          proc_SUB_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n428_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n429_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n429_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx433_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
                        .global          proc_MUL_α
                        .global          proc_MUL_β
                        .global          proc_MUL_γ
                        .global          proc_MUL_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n434_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n435_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n435_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx439_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
                        .global          proc_DIV_α
                        .global          proc_DIV_β
                        .global          proc_DIV_γ
                        .global          proc_DIV_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n440_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n441_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n441_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx445_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_NEG_α
proc_NEG_α:
                        .global          proc_NEG_α
                        .global          proc_NEG_β
                        .global          proc_NEG_γ
                        .global          proc_NEG_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              rdi, rsp
                        mov              ecx, 4592
                        xor              eax, eax
                        rep stosb
proc_NEG_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n446_op14_α:
                        mov              rdi, qword ptr [rsp + 4600]
                        mov              rsi, qword ptr [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n447_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n447_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx451_0]
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4600]
                        add              rsp, 4624
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_ω:
                        mov              rax, [rsp + 4608]
                        add              rsp, 4624
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
                        lea              rax, [rip + n454_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n452_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n453_match_any_α
n452_match_assign_save_β:
                        add              rsp, 16
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
                                                                                        jmp   proc_PAT$0_scanhit
n454_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n453_match_any_β
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
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
                        lea              rax, [rip + n463_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n461_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n462_match_span_α
n461_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n462_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx467_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx467_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx467_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx467_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx467_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx467_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx467_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx467_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx467_1
                        add              ecx, 1
                                                                                        jmp   .Lx467_0
.Lx467_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx467_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx467_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n463_match_assign_cond_α
n462_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n463_match_assign_cond_α:
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
                                                                                        jmp   proc_PAT$1_scanhit
n463_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n462_match_span_β
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 80]
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
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n470_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n470_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx478_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n471_match_patref_α
.Lx478_21:
                        lea              rax, [rip + .Lx478_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n472_match_patref_α
.Lx478_22:
                        lea              rax, [rip + .Lx478_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n473_match_sequence_α
n470_match_alternate_s0:
                        lea              rax, [rip + .Lx478_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_match_alternate_as
n470_match_alternate_s1:
                        lea              rax, [rip + .Lx478_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_match_alternate_as
n470_match_alternate_s2:
                        lea              rax, [rip + .Lx478_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_match_alternate_as
.Lx478_40:
                                                                                        jmp   n471_match_patref_β
.Lx478_41:
                                                                                        jmp   n472_match_patref_β
.Lx478_42:
                                                                                        jmp   n473_match_sequence_β
n470_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n470_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n470_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx478_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx479_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                                                                                        jne   .Lx479_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx479_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx479_10
.Lx479_9:
                        xor              eax, eax
.Lx479_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx479_11:
                        test             rax, rax
                                                                                        jz    .Lx479_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx479_4]
                        lea              rdx, [rip + .Lx479_5]
                                                                                        jmp   rax
.Lx479_4:
                                                                                        jmp   n470_match_alternate_s0
.Lx479_5:
                                                                                        jmp   n470_match_alternate_af
.Lx479_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx479_2:
                        test             rax, rax
                                                                                        je    .Lx479_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx479_7]
                        lea              rdx, [rip + .Lx479_8]
                                                                                        jmp   rax
.Lx479_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx479_2
.Lx479_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx479_2
.Lx479_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n470_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx479_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n470_match_alternate_s0
.Lx479_6:
                        add              rsp, 16
                                                                                        jmp   n470_match_alternate_af
n471_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n472_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx480_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                                                                                        jne   .Lx480_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx480_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx480_10
.Lx480_9:
                        xor              eax, eax
.Lx480_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx480_11:
                        test             rax, rax
                                                                                        jz    .Lx480_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx480_4]
                        lea              rdx, [rip + .Lx480_5]
                                                                                        jmp   rax
.Lx480_4:
                                                                                        jmp   n470_match_alternate_s1
.Lx480_5:
                                                                                        jmp   n470_match_alternate_af
.Lx480_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx480_2:
                        test             rax, rax
                                                                                        je    .Lx480_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx480_7]
                        lea              rdx, [rip + .Lx480_8]
                                                                                        jmp   rax
.Lx480_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx480_2
.Lx480_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx480_2
.Lx480_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n470_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx480_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n470_match_alternate_s1
.Lx480_6:
                        add              rsp, 16
                                                                                        jmp   n470_match_alternate_af
n472_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n473_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n474_match_lit_α
n473_match_sequence_as:
                                                                                        jmp   n470_match_alternate_s2
n473_match_sequence_β:
                                                                                        jmp   n476_match_lit_β
n473_match_sequence_af:
                                                                                        jmp   n470_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n474_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n470_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n470_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n475_match_defer_α
n474_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n470_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n475_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx485_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx485_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx485_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx485_10
.Lx485_9:
                        xor              eax, eax
.Lx485_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx485_11:
                        test             rax, rax
                                                                                        jz    .Lx485_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx485_4]
                        lea              rdx, [rip + .Lx485_5]
                                                                                        jmp   rax
.Lx485_4:
                                                                                        jmp   n476_match_lit_α
.Lx485_5:
                                                                                        jmp   n474_match_lit_β
.Lx485_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx485_2:
                        test             rax, rax
                                                                                        je    .Lx485_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx485_7]
                        lea              rdx, [rip + .Lx485_8]
                                                                                        jmp   rax
.Lx485_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx485_2
.Lx485_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx485_2
.Lx485_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n474_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx485_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n476_match_lit_α
.Lx485_6:
                        add              rsp, 16
                                                                                        jmp   n474_match_lit_β
n475_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n476_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n475_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n475_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n470_match_alternate_s2
n476_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n475_match_defer_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
8:
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
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
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
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n488_match_alternate_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n488_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx499_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n489_match_patref_α
.Lx499_21:
                        lea              rax, [rip + .Lx499_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n490_match_sequence_α
.Lx499_22:
                        lea              rax, [rip + .Lx499_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n491_match_sequence_α
n488_match_alternate_s0:
                        lea              rax, [rip + .Lx499_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n488_match_alternate_as
n488_match_alternate_s1:
                        lea              rax, [rip + .Lx499_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n488_match_alternate_as
n488_match_alternate_s2:
                        lea              rax, [rip + .Lx499_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n488_match_alternate_as
.Lx499_40:
                                                                                        jmp   n489_match_patref_β
.Lx499_41:
                                                                                        jmp   n490_match_sequence_β
.Lx499_42:
                                                                                        jmp   n491_match_sequence_β
n488_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n488_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n488_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx499_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx500_11
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 3
                                                                                        jne   .Lx500_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx500_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx500_10
.Lx500_9:
                        xor              eax, eax
.Lx500_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx500_11:
                        test             rax, rax
                                                                                        jz    .Lx500_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx500_4]
                        lea              rdx, [rip + .Lx500_5]
                                                                                        jmp   rax
.Lx500_4:
                                                                                        jmp   n488_match_alternate_s0
.Lx500_5:
                                                                                        jmp   n488_match_alternate_af
.Lx500_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx500_2:
                        test             rax, rax
                                                                                        je    .Lx500_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx500_7]
                        lea              rdx, [rip + .Lx500_8]
                                                                                        jmp   rax
.Lx500_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx500_2
.Lx500_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx500_2
.Lx500_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n488_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx500_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n488_match_alternate_s0
.Lx500_6:
                        add              rsp, 16
                                                                                        jmp   n488_match_alternate_af
n489_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n490_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n492_match_lit_α
n490_match_sequence_as:
                                                                                        jmp   n488_match_alternate_s1
n490_match_sequence_β:
                                                                                        jmp   n493_match_defer_β
n490_match_sequence_af:
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n491_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n494_match_lit_α
n491_match_sequence_as:
                                                                                        jmp   n488_match_alternate_s2
n491_match_sequence_β:
                                                                                        jmp   n496_match_assign_cond_β
n491_match_sequence_af:
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n492_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n488_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n488_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n493_match_defer_α
n492_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n493_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx507_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx507_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx507_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx507_10
.Lx507_9:
                        xor              eax, eax
.Lx507_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx507_11:
                        test             rax, rax
                                                                                        jz    .Lx507_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx507_4]
                        lea              rdx, [rip + .Lx507_5]
                                                                                        jmp   rax
.Lx507_4:
                                                                                        jmp   n488_match_alternate_s1
.Lx507_5:
                                                                                        jmp   n492_match_lit_β
.Lx507_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx507_2:
                        test             rax, rax
                                                                                        je    .Lx507_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx507_7]
                        lea              rdx, [rip + .Lx507_8]
                                                                                        jmp   rax
.Lx507_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx507_2
.Lx507_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx507_2
.Lx507_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n492_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx507_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n488_match_alternate_s1
.Lx507_6:
                        add              rsp, 16
                                                                                        jmp   n492_match_lit_β
n493_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n494_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n488_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n488_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n495_match_assign_save_α
n494_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n495_match_assign_save_α:
                        lea              rdi, [rbp + 160]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n497_match_defer_α
n495_match_assign_save_β:
                        lea              rdi, [rbp + 160]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n494_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n496_match_assign_cond_α:
                        lea              rdi, [rbp + 160]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S6]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n488_match_alternate_s2
n496_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n497_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n497_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
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
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx514_11:
                        test             rax, rax
                                                                                        jz    .Lx514_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx514_4]
                        lea              rdx, [rip + .Lx514_5]
                                                                                        jmp   rax
.Lx514_4:
                                                                                        jmp   n496_match_assign_cond_α
.Lx514_5:
                                                                                        jmp   n495_match_assign_save_β
.Lx514_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
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
                                                                                        js    n495_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx514_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n496_match_assign_cond_α
.Lx514_6:
                        add              rsp, 16
                                                                                        jmp   n495_match_assign_save_β
n497_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 208]
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
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], r8
                        mov              dword ptr [rsp + 296], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n515_match_sequence_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n515_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n516_match_patref_α
n515_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n515_match_sequence_β:
                                                                                        jmp   n517_match_alternate_β
n515_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n516_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx531_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx531_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx531_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx531_10
.Lx531_9:
                        xor              eax, eax
.Lx531_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx531_11:
                        test             rax, rax
                                                                                        jz    .Lx531_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx531_4]
                        lea              rdx, [rip + .Lx531_5]
                                                                                        jmp   rax
.Lx531_4:
                                                                                        jmp   n517_match_alternate_α
.Lx531_5:
                                                                                        jmp   proc_PAT$4_ω
.Lx531_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx531_2:
                        test             rax, rax
                                                                                        je    .Lx531_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx531_7]
                        lea              rdx, [rip + .Lx531_8]
                                                                                        jmp   rax
.Lx531_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx531_2
.Lx531_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx531_2
.Lx531_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx531_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n517_match_alternate_α
.Lx531_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n516_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n517_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx533_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n518_match_sequence_α
.Lx533_21:
                        lea              rax, [rip + .Lx533_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n519_match_sequence_α
.Lx533_22:
                        lea              rax, [rip + .Lx533_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n520_match_lit_α
n517_match_alternate_s0:
                        lea              rax, [rip + .Lx533_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n517_match_alternate_as
n517_match_alternate_s1:
                        lea              rax, [rip + .Lx533_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n517_match_alternate_as
n517_match_alternate_s2:
                        lea              rax, [rip + .Lx533_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n517_match_alternate_as
.Lx533_40:
                                                                                        jmp   n518_match_sequence_β
.Lx533_41:
                                                                                        jmp   n519_match_sequence_β
.Lx533_42:
                                                                                        jmp   n520_match_lit_β
n517_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n517_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n517_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx533_19:
                                                                                        jmp   n516_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n518_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n521_match_lit_α
n518_match_sequence_as:
                                                                                        jmp   n517_match_alternate_s0
n518_match_sequence_β:
                                                                                        jmp   n523_match_assign_cond_β
n518_match_sequence_af:
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n519_match_sequence_α:
                        mov              dword ptr [rbp + 192], r14d
                                                                                        jmp   n524_match_lit_α
n519_match_sequence_as:
                                                                                        jmp   n517_match_alternate_s1
n519_match_sequence_β:
                                                                                        jmp   n526_match_assign_cond_β
n519_match_sequence_af:
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n520_match_lit_α:
                                                                                        jmp   n517_match_alternate_s2
n520_match_lit_β:
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n521_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n517_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n517_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n522_match_assign_save_α
n521_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n522_match_assign_save_α:
                        lea              rdi, [rbp + 144]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n527_match_defer_α
n522_match_assign_save_β:
                        lea              rdi, [rbp + 144]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n521_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n523_match_assign_cond_α:
                        lea              rdi, [rbp + 144]
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
                                                                                        jmp   n517_match_alternate_s0
n523_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n527_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n524_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n517_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n517_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n525_match_assign_save_α
n524_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n525_match_assign_save_α:
                        lea              rdi, [rbp + 240]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n528_match_defer_α
n525_match_assign_save_β:
                        lea              rdi, [rbp + 240]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n524_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n526_match_assign_cond_α:
                        lea              rdi, [rbp + 240]
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
                                                                                        jmp   n517_match_alternate_s1
n526_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n528_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n527_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx552_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx552_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx552_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx552_10
.Lx552_9:
                        xor              eax, eax
.Lx552_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx552_11:
                        test             rax, rax
                                                                                        jz    .Lx552_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx552_4]
                        lea              rdx, [rip + .Lx552_5]
                                                                                        jmp   rax
.Lx552_4:
                                                                                        jmp   n523_match_assign_cond_α
.Lx552_5:
                                                                                        jmp   n522_match_assign_save_β
.Lx552_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx552_2
.Lx552_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx552_2
.Lx552_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n522_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx552_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n523_match_assign_cond_α
.Lx552_6:
                        add              rsp, 16
                                                                                        jmp   n522_match_assign_save_β
n527_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n528_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx553_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx553_10
.Lx553_9:
                        xor              eax, eax
.Lx553_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx553_11:
                        test             rax, rax
                                                                                        jz    .Lx553_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx553_4]
                        lea              rdx, [rip + .Lx553_5]
                                                                                        jmp   rax
.Lx553_4:
                                                                                        jmp   n526_match_assign_cond_α
.Lx553_5:
                                                                                        jmp   n525_match_assign_save_β
.Lx553_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx553_2
.Lx553_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx553_2
.Lx553_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n525_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx553_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n526_match_assign_cond_α
.Lx553_6:
                        add              rsp, 16
                                                                                        jmp   n525_match_assign_save_β
n528_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], r8
                        mov              dword ptr [rsp + 296], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + n554_match_sequence_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n554_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n555_match_patref_α
n554_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n554_match_sequence_β:
                                                                                        jmp   n556_match_alternate_β
n554_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n555_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx570_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx570_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx570_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx570_10
.Lx570_9:
                        xor              eax, eax
.Lx570_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx570_11:
                        test             rax, rax
                                                                                        jz    .Lx570_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx570_4]
                        lea              rdx, [rip + .Lx570_5]
                                                                                        jmp   rax
.Lx570_4:
                                                                                        jmp   n556_match_alternate_α
.Lx570_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx570_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx570_2:
                        test             rax, rax
                                                                                        je    .Lx570_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx570_7]
                        lea              rdx, [rip + .Lx570_8]
                                                                                        jmp   rax
.Lx570_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx570_2
.Lx570_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx570_2
.Lx570_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx570_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n556_match_alternate_α
.Lx570_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n555_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n556_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx572_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n557_match_sequence_α
.Lx572_21:
                        lea              rax, [rip + .Lx572_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n558_match_sequence_α
.Lx572_22:
                        lea              rax, [rip + .Lx572_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n559_match_lit_α
n556_match_alternate_s0:
                        lea              rax, [rip + .Lx572_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n556_match_alternate_as
n556_match_alternate_s1:
                        lea              rax, [rip + .Lx572_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n556_match_alternate_as
n556_match_alternate_s2:
                        lea              rax, [rip + .Lx572_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n556_match_alternate_as
.Lx572_40:
                                                                                        jmp   n557_match_sequence_β
.Lx572_41:
                                                                                        jmp   n558_match_sequence_β
.Lx572_42:
                                                                                        jmp   n559_match_lit_β
n556_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n556_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n556_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx572_19:
                                                                                        jmp   n555_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n557_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n560_match_lit_α
n557_match_sequence_as:
                                                                                        jmp   n556_match_alternate_s0
n557_match_sequence_β:
                                                                                        jmp   n562_match_assign_cond_β
n557_match_sequence_af:
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n558_match_sequence_α:
                        mov              dword ptr [rbp + 192], r14d
                                                                                        jmp   n563_match_lit_α
n558_match_sequence_as:
                                                                                        jmp   n556_match_alternate_s1
n558_match_sequence_β:
                                                                                        jmp   n565_match_assign_cond_β
n558_match_sequence_af:
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n559_match_lit_α:
                                                                                        jmp   n556_match_alternate_s2
n559_match_lit_β:
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n560_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n556_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n556_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n561_match_assign_save_α
n560_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n561_match_assign_save_α:
                        lea              rdi, [rbp + 144]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n566_match_defer_α
n561_match_assign_save_β:
                        lea              rdi, [rbp + 144]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n560_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n562_match_assign_cond_α:
                        lea              rdi, [rbp + 144]
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
                                                                                        jmp   n556_match_alternate_s0
n562_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n566_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n563_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n556_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n556_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n564_match_assign_save_α
n563_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n556_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n564_match_assign_save_α:
                        lea              rdi, [rbp + 240]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n567_match_defer_α
n564_match_assign_save_β:
                        lea              rdi, [rbp + 240]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n563_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n565_match_assign_cond_α:
                        lea              rdi, [rbp + 240]
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
                                                                                        jmp   n556_match_alternate_s1
n565_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n567_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n566_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx591_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx591_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx591_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx591_10
.Lx591_9:
                        xor              eax, eax
.Lx591_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx591_11:
                        test             rax, rax
                                                                                        jz    .Lx591_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx591_4]
                        lea              rdx, [rip + .Lx591_5]
                                                                                        jmp   rax
.Lx591_4:
                                                                                        jmp   n562_match_assign_cond_α
.Lx591_5:
                                                                                        jmp   n561_match_assign_save_β
.Lx591_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx591_2:
                        test             rax, rax
                                                                                        je    .Lx591_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx591_7]
                        lea              rdx, [rip + .Lx591_8]
                                                                                        jmp   rax
.Lx591_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx591_2
.Lx591_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx591_2
.Lx591_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n561_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx591_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n562_match_assign_cond_α
.Lx591_6:
                        add              rsp, 16
                                                                                        jmp   n561_match_assign_save_β
n566_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n567_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx592_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx592_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx592_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx592_10
.Lx592_9:
                        xor              eax, eax
.Lx592_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx592_11:
                        test             rax, rax
                                                                                        jz    .Lx592_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx592_4]
                        lea              rdx, [rip + .Lx592_5]
                                                                                        jmp   rax
.Lx592_4:
                                                                                        jmp   n565_match_assign_cond_α
.Lx592_5:
                                                                                        jmp   n564_match_assign_save_β
.Lx592_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx592_2:
                        test             rax, rax
                                                                                        je    .Lx592_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx592_7]
                        lea              rdx, [rip + .Lx592_8]
                                                                                        jmp   rax
.Lx592_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx592_2
.Lx592_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx592_2
.Lx592_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n564_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx592_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n565_match_assign_cond_α
.Lx592_6:
                        add              rsp, 16
                                                                                        jmp   n564_match_assign_save_β
n567_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 296], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
8:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
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
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n594_call_α
.Lx597_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n594_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lbynamefn225:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn225]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_PAT$6_scanfail
                                                                                        jmp   n595_match_value_α
n594_call_β:
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n595_match_value_α:
                        lea              rdi, [rbp + 32]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx599_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx599_4]
                        lea              rdx, [rip + .Lx599_5]
                                                                                        jmp   rax
.Lx599_4:
                                                                                        jmp   n596_match_fence1_α
.Lx599_5:
                                                                                        jmp   proc_PAT$6_scanfail
.Lx599_0:
                        lea              rdi, [rbp + 32]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx599_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n596_match_fence1_α
.Lx599_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
n595_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n596_match_fence1_α:
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_scanhit
n596_match_fence1_β:
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 96]
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
                        lea              rax, [rip + n602_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n602_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n603_lit_integer_α
n602_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n602_match_sequence_β:
                                                                                        jmp   n607_match_rpos_β
n602_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n604_match_pos_α
n603_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx616_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n604_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n605_match_arbno_α
n604_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n605_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n606_lit_integer_α
n605_match_arbno_β:
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
                                                                                        jmp   n608_match_sequence_α
n605_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n608_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n606_lit_integer_α
n605_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx619_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n608_match_sequence_β
.Lx619_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n604_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n607_match_rpos_α
n606_lit_integer_β:
                                                                                        jmp   n605_match_arbno_β
.Lx620_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n607_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n605_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n607_match_rpos_β:
                                                                                        jmp   n605_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n608_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n610_match_patref_α
n608_match_sequence_as:
                                                                                        jmp   n605_match_arbno_as
n608_match_sequence_β:
                                                                                        jmp   n613_match_assign_cond_β
n608_match_sequence_af:
                                                                                        jmp   n605_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n609_match_patref_α:
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx624_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx624_4]
                        lea              rdx, [rip + .Lx624_5]
                                                                                        jmp   rax
.Lx624_4:
                                                                                        jmp   n613_match_assign_cond_α
.Lx624_5:
                                                                                        jmp   n612_match_assign_save_β
.Lx624_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx624_2
.Lx624_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx624_2
.Lx624_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n612_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx624_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n613_match_assign_cond_α
.Lx624_6:
                        add              rsp, 16
                                                                                        jmp   n612_match_assign_save_β
n609_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n610_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx625_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx625_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx625_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx625_10
.Lx625_9:
                        xor              eax, eax
.Lx625_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx625_11:
                        test             rax, rax
                                                                                        jz    .Lx625_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx625_4]
                        lea              rdx, [rip + .Lx625_5]
                                                                                        jmp   rax
.Lx625_4:
                                                                                        jmp   n611_match_patref_α
.Lx625_5:
                                                                                        jmp   n605_match_arbno_af
.Lx625_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx625_2:
                        test             rax, rax
                                                                                        je    .Lx625_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx625_7]
                        lea              rdx, [rip + .Lx625_8]
                                                                                        jmp   rax
.Lx625_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx625_2
.Lx625_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx625_2
.Lx625_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n605_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx625_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n611_match_patref_α
.Lx625_6:
                        add              rsp, 16
                                                                                        jmp   n605_match_arbno_af
n610_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n611_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                                                                                        jne   .Lx626_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx626_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n612_match_assign_save_α
.Lx626_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n610_match_patref_β
.Lx626_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx626_2
.Lx626_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx626_2
.Lx626_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n610_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx626_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n612_match_assign_save_α
.Lx626_6:
                        add              rsp, 16
                                                                                        jmp   n610_match_patref_β
n611_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n610_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n612_match_assign_save_α:
                        lea              rdi, [rbp + 208]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n609_match_patref_α
n612_match_assign_save_β:
                        lea              rdi, [rbp + 208]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n611_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n613_match_assign_cond_α:
                        lea              rdi, [rbp + 208]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S14]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n605_match_arbno_as
n613_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n609_match_patref_β
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 272]
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
                        mov              esi, 304
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
                        mov              esi, 304
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
                        sub              rsp, 4600
                        mov              rdi, rsp
                        mov              ecx, 4600
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4592], rbp
                        mov              rbp, rsp
main_α_body:
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
n631_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n652_call_α
n631_lit_integer_β:
                                                                                        jmp   n666_keyword_snobol4_α
.Lx915_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n632_goto_α:
                                                                                        jmp   n653_var_α
n632_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n633_goto_α:
                                                                                        jmp   n631_lit_integer_α
n633_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n634_goto_α:
                                                                                        jmp   n654_var_α
n634_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n635_goto_α:
                                                                                        jmp   n631_lit_integer_α
n635_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n636_goto_α:
                                                                                        jmp   n655_var_α
n636_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n637_goto_α:
                                                                                        jmp   n656_var_α
n637_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n638_goto_α:
                                                                                        jmp   n631_lit_integer_α
n638_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n639_goto_α:
                                                                                        jmp   n657_var_α
n639_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n640_goto_α:
                                                                                        jmp   n631_lit_integer_α
n640_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n641_goto_α:
                                                                                        jmp   n658_var_α
n641_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n642_goto_α:
                                                                                        jmp   n631_lit_integer_α
n642_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n643_goto_α:
                                                                                        jmp   n659_var_α
n643_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n644_goto_α:
                                                                                        jmp   n631_lit_integer_α
n644_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n645_goto_α:
                                                                                        jmp   n660_var_α
n645_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n646_goto_α:
                                                                                        jmp   n631_lit_integer_α
n646_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n647_goto_α:
                                                                                        jmp   n661_var_α
n647_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n648_goto_α:
                                                                                        jmp   n631_lit_integer_α
n648_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n649_goto_α:
                                                                                        jmp   n662_var_α
n649_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n650_goto_α:
                                                                                        jmp   n663_var_α
n650_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n651_goto_α:
                                                                                        jmp   n664_call_α
n651_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n652_call_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn937:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn937]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n666_keyword_snobol4_α
                                                                                        jmp   n665_assign_α
n652_call_β:
                                                                                        jmp   n666_keyword_snobol4_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n653_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n667_lit_integer_α
n653_var_β:
                                                                                        jmp   n668_lit_integer_α
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n669_lit_integer_α
n654_var_β:
                        add              rsp, 16
                                                                                        jmp   n670_var_α
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n655_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n671_match_head_α
n655_var_β:
                                                                                        jmp   n656_var_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n656_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n672_assign_α
n656_var_β:
                        add              rsp, 16
                                                                                        jmp   n673_op14_α
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n657_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n674_var_α
n657_var_β:
                                                                                        jmp   n675_var_α
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n658_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n676_var_α
n658_var_β:
                                                                                        jmp   n677_var_α
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n659_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n678_var_α
n659_var_β:
                                                                                        jmp   n679_var_α
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n660_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n680_var_α
n660_var_β:
                                                                                        jmp   n681_var_α
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n661_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n682_var_α
n661_var_β:
                                                                                        jmp   n683_lit_string_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n662_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx947_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx947_240
                        add              rsp, 16
                                                                                        jmp   n663_var_α
.Lx947_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n684_assign_α
n662_var_β:
                        add              rsp, 16
                                                                                        jmp   n663_var_α
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "INPUT"
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n663_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n685_var_α
n663_var_β:
                        add              rsp, 16
                                                                                        jmp   n686_call_α
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:
                        .section         .rodata
.Lrkfn950:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rbp + 4480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    n688_lit_string_α
                                                                                        jmp   n687_assign_α
n664_call_β:
                                                                                        jmp   n688_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n665_assign_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n666_keyword_snobol4_α
n665_assign_β:
                                                                                        jmp   n666_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n666_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx952_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n689_assign_α
n666_keyword_snobol4_β:
                                                                                        jmp   n715_lit_string_α
.Lx952_0:
                        .quad            .Lx952_0_s
.Lx952_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx953_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n690_subscript_α
n667_lit_integer_β:
                                                                                        jmp   n668_lit_integer_α
.Lx953_0:
                        .quad            1
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n691_assign_α
n668_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n717_lit_string_α
.Lx954_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n692_binop_α
n669_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n670_var_α
.Lx955_0:
                        .quad            1
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n670_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n693_var_α
n670_var_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n671_match_head_α:
                        mov              qword ptr [rbp + 464], r13
                        mov              qword ptr [rbp + 472], r14
                        mov              qword ptr [rbp + 480], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax
                        mov              qword ptr [rbp + 456], rbp
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx958_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n695_match_sequence_α
n671_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx958_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx958_1
                                                                                        jmp   .Lx958_0
.Lx958_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx958_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx958_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n656_var_α
#-----------------------------------------------------------------------------------------------------------------------
n672_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n673_op14_α
n672_assign_β:
                                                                                        jmp   n673_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n673_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n674_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n696_subscript_α
n674_var_β:
                                                                                        jmp   n675_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n697_lit_integer_α
n675_var_β:
                        add              rsp, 16
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n676_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n699_subscript_α
n676_var_β:
                                                                                        jmp   n677_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n677_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n700_lit_integer_α
n677_var_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n678_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n702_subscript_α
n678_var_β:
                                                                                        jmp   n679_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n703_lit_integer_α
n679_var_β:
                        add              rsp, 16
                                                                                        jmp   n704_var_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n705_subscript_α
n680_var_β:
                                                                                        jmp   n681_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n681_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n706_lit_integer_α
n681_var_β:
                        add              rsp, 16
                                                                                        jmp   n707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n682_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n708_subscript_α
n682_var_β:
                                                                                        jmp   n683_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              dword ptr [rbp + 2612], 2
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n709_call_α
n683_lit_string_β:
                                                                                        jmp   n694_lit_string_α
.Lx971_0:
                        .quad            .Lx971_0_s
.Lx971_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n684_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n710_var_α
n684_assign_β:
                                                                                        jmp   n663_var_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n711_binop_α
n685_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n686_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n686_call_α:
                        .section         .rodata
.Lrkfn975:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn975]
                        lea              rsi, [rbp + 4208]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n713_var_α
                                                                                        jmp   n712_assign_α
n686_call_β:
                                                                                        jmp   n713_var_α
#-----------------------------------------------------------------------------------------------------------------------
n687_assign_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              rdx, qword ptr [rbp + 4472]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n688_lit_string_α
n687_assign_β:
                                                                                        jmp   n688_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n714_assign_α
n688_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n749_lit_string_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n689_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n715_lit_string_α
n689_assign_β:
                                                                                        jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n690_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n668_lit_integer_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n716_deref_α
n690_subscript_β:
                                                                                        jmp   n668_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n691_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n717_lit_string_α
n691_assign_β:
                                                                                        jmp   n717_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n692_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx981_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx981_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n718_assign_α
.Lx981_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx981_240
                        add              rsp, 32
                                                                                        jmp   n670_var_α
.Lx981_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n718_assign_α
n692_binop_β:
                        add              rsp, 32
                                                                                        jmp   n670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n719_subscript_α
n693_var_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n720_call_α
n694_lit_string_β:
                                                                                        jmp   n754_op14_α
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n695_match_sequence_α:
                                                                                        jmp   n722_lit_integer_α
n695_match_sequence_as:
                                                                                        jmp   n721_match_release_α
n695_match_sequence_β:
                                                                                        jmp   n726_match_rpos_β
n695_match_sequence_af:
                                                                                        jmp   n671_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n696_subscript_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n675_var_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n727_deref_α
n696_subscript_β:
                                                                                        jmp   n675_var_α
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx987_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n728_binop_α
n697_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n698_var_α
.Lx987_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n729_var_α
n698_var_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n699_subscript_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n677_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n731_deref_α
n699_subscript_β:
                                                                                        jmp   n677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n732_binop_α
n700_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n701_var_α
.Lx990_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n701_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n733_var_α
n701_var_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n702_subscript_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n679_var_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n735_deref_α
n702_subscript_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n736_binop_α
n703_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n704_var_α
.Lx993_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n704_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n737_var_α
n704_var_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n705_subscript_α:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n681_var_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n739_deref_α
n705_subscript_β:
                                                                                        jmp   n681_var_α
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n740_binop_α
n706_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n707_var_α
.Lx996_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n707_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n741_var_α
n707_var_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n708_subscript_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n683_lit_string_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n743_var_α
n708_subscript_β:
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n709_call_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn1000:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1000]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                                                                                        jmp   n744_assign_α
n709_call_β:
                                                                                        jmp   n694_lit_string_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n710_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n745_var_α
n710_var_β:
                        add              rsp, 16
                                                                                        jmp   n746_var_α
#-----------------------------------------------------------------------------------------------------------------------
n711_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n747_var_α
n711_binop_β:
                        add              rsp, 32
                                                                                        jmp   n686_call_α
#-----------------------------------------------------------------------------------------------------------------------
n712_assign_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              rdx, qword ptr [rbp + 4200]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n713_var_α
n712_assign_β:
                                                                                        jmp   n713_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n713_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n748_match_head_α
n713_var_β:
                                                                                        jmp   n664_call_α
#-----------------------------------------------------------------------------------------------------------------------
n714_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1005_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n749_lit_string_α
n714_assign_β:
                                                                                        jmp   n749_lit_string_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n750_assign_α
n715_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n778_lit_string_α
.Lx1006_0:
                        .quad            .Lx1006_0_s
.Lx1006_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n716_deref_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n668_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n751_call_α
n716_deref_β:
                                                                                        jmp   n668_lit_integer_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n752_call_α
n717_lit_string_β:
                                                                                        jmp   n694_lit_string_α
.Lx1008_0:
                        .quad            .Lx1008_0_s
.Lx1008_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n718_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n670_var_α
n718_assign_β:
                                                                                        jmp   n670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n719_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n753_assign_α
n719_subscript_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n720_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn1012:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1012]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n754_op14_α
                                                                                        jmp   n673_op14_α
n720_call_β:
                                                                                        jmp   n754_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n721_match_release_α:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1014_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1014_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1014_1:
                        test             rax, rax
                                                                                        je    .Lx1014_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1014_3]
                        lea              rdx, [rip + .Lx1014_4]
                                                                                        jmp   rax
.Lx1014_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1014_1
.Lx1014_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1014_1
.Lx1014_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1014_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1014_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n755_var_α
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n723_match_pos_α
n722_lit_integer_β:
                                                                                        jmp   n671_match_head_β
.Lx1015_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n723_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n671_match_head_β
                                                                                        jmp   n724_match_any_α
n723_match_pos_β:
                                                                                        jmp   n671_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n724_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n671_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n671_match_head_β
                        add              r14d, 1
                                                                                        jmp   n725_lit_integer_α
n724_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n671_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx1019_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n726_match_rpos_α
n725_lit_integer_β:
                                                                                        jmp   n724_match_any_β
.Lx1019_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n726_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n724_match_any_β
                                                                                        jmp   n721_match_release_α
n726_match_rpos_β:
                                                                                        jmp   n724_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n727_deref_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n675_var_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n756_call_α
n727_deref_β:
                                                                                        jmp   n675_var_α
#-----------------------------------------------------------------------------------------------------------------------
n728_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1022_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1022_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n757_assign_α
.Lx1022_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1022_240
                        add              rsp, 32
                                                                                        jmp   n698_var_α
.Lx1022_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n757_assign_α
n728_binop_β:
                        add              rsp, 32
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n729_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n758_subscript_α
n729_var_β:
                                                                                        jmp   n730_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n759_call_α
n730_lit_string_β:
                                                                                        jmp   n694_lit_string_α
.Lx1024_0:
                        .quad            .Lx1024_0_s
.Lx1024_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n731_deref_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n677_var_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n760_call_α
n731_deref_β:
                                                                                        jmp   n677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n732_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1026_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1026_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n761_assign_α
.Lx1026_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1026_240
                        add              rsp, 32
                                                                                        jmp   n701_var_α
.Lx1026_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n761_assign_α
n732_binop_β:
                        add              rsp, 32
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n762_subscript_α
n733_var_β:
                                                                                        jmp   n734_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              dword ptr [rbp + 1492], 2
                        mov              rax, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n763_call_α
n734_lit_string_β:
                                                                                        jmp   n694_lit_string_α
.Lx1028_0:
                        .quad            .Lx1028_0_s
.Lx1028_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n735_deref_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n679_var_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n764_call_α
n735_deref_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n736_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1030_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1030_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n765_assign_α
.Lx1030_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1030_240
                        add              rsp, 32
                                                                                        jmp   n704_var_α
.Lx1030_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n765_assign_α
n736_binop_β:
                        add              rsp, 32
                                                                                        jmp   n704_var_α
#-----------------------------------------------------------------------------------------------------------------------
n737_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n766_subscript_α
n737_var_β:
                                                                                        jmp   n738_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              dword ptr [rbp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx1032_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n767_call_α
n738_lit_string_β:
                                                                                        jmp   n694_lit_string_α
.Lx1032_0:
                        .quad            .Lx1032_0_s
.Lx1032_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n739_deref_α:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n681_var_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n768_call_α
n739_deref_β:
                                                                                        jmp   n681_var_α
#-----------------------------------------------------------------------------------------------------------------------
n740_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1034_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1034_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n769_assign_α
.Lx1034_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1034_240
                        add              rsp, 32
                                                                                        jmp   n707_var_α
.Lx1034_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n769_assign_α
n740_binop_β:
                        add              rsp, 32
                                                                                        jmp   n707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n741_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n770_subscript_α
n741_var_β:
                                                                                        jmp   n742_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n771_call_α
n742_lit_string_β:
                                                                                        jmp   n694_lit_string_α
.Lx1036_0:
                        .quad            .Lx1036_0_s
.Lx1036_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n743_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n772_var_α
n743_var_β:
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n744_assign_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n694_lit_string_α
n744_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n745_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n773_binop_α
n745_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n746_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n746_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n774_call_α
n746_var_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n747_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n775_binop_α
n747_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n686_call_α
#-----------------------------------------------------------------------------------------------------------------------
n748_match_head_α:
                        mov              qword ptr [rbp + 4288], r13
                        mov              qword ptr [rbp + 4296], r14
                        mov              qword ptr [rbp + 4304], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 4312], rax
                        mov              qword ptr [rbp + 4280], rbp
                        mov              rdi, qword ptr [rbp + 4336]
                        mov              rsi, qword ptr [rbp + 4344]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 4256], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 4248], rax
                        mov              dword ptr [rbp + 4240], 0
.Lx1043_0:
                        mov              r14d, dword ptr [rbp + 4240]
                                                                                        jmp   n776_match_patref_α
n748_match_head_β:
                        add              dword ptr [rbp + 4240], 1
                        mov              eax, dword ptr [rbp + 4240]
                        cmp              eax, r15d
                                                                                        jg    .Lx1043_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1043_1
                                                                                        jmp   .Lx1043_0
.Lx1043_1:
                        mov              rax, qword ptr [rbp + 4248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 4256]
                        mov              r10, qword ptr [1879048192]
.Lx1043_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1043_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 4288]
                        mov              r14, qword ptr [rbp + 4296]
                        mov              r15, qword ptr [rbp + 4304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 4312]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 4280]
                                                                                        jmp   n664_call_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1044_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n777_var_α
n749_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1044_0:
                        .quad            .Lx1044_0_s
.Lx1044_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n750_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n778_lit_string_α
n750_assign_β:
                                                                                        jmp   n778_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n751_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1047_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1047_5
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1047_6]
                        lea              rdx, [rip + .Lx1047_7]
                                                                                        jmp   rax
.Lx1047_6:
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
                                                                                        jmp   .Lx1047_2
.Lx1047_7:
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
                                                                                        jmp   .Lx1047_2
.Lx1047_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1047_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1047_21
.Lx1047_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx1047_21:
                        mov              rdi, qword ptr [rip + .Lx1047_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1047_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1047_3]
                        lea              rdx, [rip + .Lx1047_4]
                                                                                        jmp   rax
.Lx1047_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1047_2
.Lx1047_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1047_2
.Lx1047_1:
                        call             rt_faildescr@PLT
.Lx1047_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n668_lit_integer_α
                                                                                        jmp   n779_assign_α
n751_call_β:
                                                                                        jmp   n668_lit_integer_α
.Lx1047_0:
                        .quad            .Lx1047_0_s
.Lx1047_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n752_call_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1049:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                                                                                        jmp   n780_assign_α
n752_call_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n753_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n694_lit_string_α
n753_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n754_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n755_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n781_var_α
n755_var_β:
                                                                                        jmp   n673_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n756_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1055_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1055_5
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1055_6]
                        lea              rdx, [rip + .Lx1055_7]
                                                                                        jmp   rax
.Lx1055_6:
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
                                                                                        jmp   .Lx1055_2
.Lx1055_7:
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
                                                                                        jmp   .Lx1055_2
.Lx1055_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1055_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1055_21
.Lx1055_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx1055_21:
                        mov              rdi, qword ptr [rip + .Lx1055_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1055_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1055_3]
                        lea              rdx, [rip + .Lx1055_4]
                                                                                        jmp   rax
.Lx1055_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1055_2
.Lx1055_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1055_2
.Lx1055_1:
                        call             rt_faildescr@PLT
.Lx1055_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n675_var_α
                                                                                        jmp   n782_assign_α
n756_call_β:
                                                                                        jmp   n675_var_α
.Lx1055_0:
                        .quad            .Lx1055_0_s
.Lx1055_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n757_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n698_var_α
n757_assign_β:
                                                                                        jmp   n698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n758_subscript_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n730_lit_string_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n783_var_α
n758_subscript_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n759_call_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn1059:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1059]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                                                                                        jmp   n784_assign_α
n759_call_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n760_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1061_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1061_5
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1061_6]
                        lea              rdx, [rip + .Lx1061_7]
                                                                                        jmp   rax
.Lx1061_6:
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
                                                                                        jmp   .Lx1061_2
.Lx1061_7:
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
                                                                                        jmp   .Lx1061_2
.Lx1061_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1061_20
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1061_21
.Lx1061_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx1061_21:
                        mov              rdi, qword ptr [rip + .Lx1061_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1061_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1061_3]
                        lea              rdx, [rip + .Lx1061_4]
                                                                                        jmp   rax
.Lx1061_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1061_2
.Lx1061_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1061_2
.Lx1061_1:
                        call             rt_faildescr@PLT
.Lx1061_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n677_var_α
                                                                                        jmp   n785_assign_α
n760_call_β:
                                                                                        jmp   n677_var_α
.Lx1061_0:
                        .quad            .Lx1061_0_s
.Lx1061_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n761_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n701_var_α
n761_assign_β:
                                                                                        jmp   n701_var_α
#-----------------------------------------------------------------------------------------------------------------------
n762_subscript_α:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n786_var_α
n762_subscript_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n763_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn1065:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1065]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                                                                                        jmp   n787_assign_α
n763_call_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n764_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1067_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1067_5
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1067_6]
                        lea              rdx, [rip + .Lx1067_7]
                                                                                        jmp   rax
.Lx1067_6:
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
                                                                                        jmp   .Lx1067_2
.Lx1067_7:
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
                                                                                        jmp   .Lx1067_2
.Lx1067_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1067_20
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1067_21
.Lx1067_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx1067_21:
                        mov              rdi, qword ptr [rip + .Lx1067_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1067_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1067_3]
                        lea              rdx, [rip + .Lx1067_4]
                                                                                        jmp   rax
.Lx1067_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1067_2
.Lx1067_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1067_2
.Lx1067_1:
                        call             rt_faildescr@PLT
.Lx1067_2:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n679_var_α
                                                                                        jmp   n788_assign_α
n764_call_β:
                                                                                        jmp   n679_var_α
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n765_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n704_var_α
n765_assign_β:
                                                                                        jmp   n704_var_α
#-----------------------------------------------------------------------------------------------------------------------
n766_subscript_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n738_lit_string_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n789_var_α
n766_subscript_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n767_call_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn1071:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1071]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                                                                                        jmp   n790_assign_α
n767_call_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n768_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1073_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1073_5
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1073_6]
                        lea              rdx, [rip + .Lx1073_7]
                                                                                        jmp   rax
.Lx1073_6:
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
                                                                                        jmp   .Lx1073_2
.Lx1073_7:
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
                                                                                        jmp   .Lx1073_2
.Lx1073_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1073_20
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1073_21
.Lx1073_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        call             rt_arg_stage@PLT
.Lx1073_21:
                        mov              rdi, qword ptr [rip + .Lx1073_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1073_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1073_3]
                        lea              rdx, [rip + .Lx1073_4]
                                                                                        jmp   rax
.Lx1073_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1073_2
.Lx1073_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1073_2
.Lx1073_1:
                        call             rt_faildescr@PLT
.Lx1073_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n681_var_α
                                                                                        jmp   n791_assign_α
n768_call_β:
                                                                                        jmp   n681_var_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n769_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n707_var_α
n769_assign_β:
                                                                                        jmp   n707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n770_subscript_α:
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n742_lit_string_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n792_var_α
n770_subscript_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n771_call_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn1077:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1077]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n694_lit_string_α
                                                                                        jmp   n793_assign_α
n771_call_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n772_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n794_subscript_α
n772_var_β:
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n773_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n795_var_α
n773_binop_β:
                        add              rsp, 32
                                                                                        jmp   n746_var_α
#-----------------------------------------------------------------------------------------------------------------------
n774_call_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                        .section         .rodata
.Lrkfn1081:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1081]
                        lea              rsi, [rbp + 3824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 99
                                                                                        je    n662_var_α
                                                                                        jmp   n796_lit_integer_α
n774_call_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n775_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n797_assign_α
n775_binop_β:
                        add              rsp, 32
                                                                                        jmp   n686_call_α
#-----------------------------------------------------------------------------------------------------------------------
n776_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1083_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                                                                                        jne   .Lx1083_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1083_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1083_10
.Lx1083_9:
                        xor              eax, eax
.Lx1083_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx1083_11:
                        test             rax, rax
                                                                                        jz    .Lx1083_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1083_4]
                        lea              rdx, [rip + .Lx1083_5]
                                                                                        jmp   rax
.Lx1083_4:
                                                                                        jmp   n798_match_release_α
.Lx1083_5:
                                                                                        jmp   n748_match_head_β
.Lx1083_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1083_2:
                        test             rax, rax
                                                                                        je    .Lx1083_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1083_7]
                        lea              rdx, [rip + .Lx1083_8]
                                                                                        jmp   rax
.Lx1083_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1083_2
.Lx1083_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1083_2
.Lx1083_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n748_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1083_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n798_match_release_α
.Lx1083_6:
                        add              rsp, 16
                                                                                        jmp   n748_match_head_β
n776_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n777_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n799_var_α
n777_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              dword ptr [rbp + 2772], 5
                        mov              rax, qword ptr [rip + .Lx1085_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n800_call_α
n778_lit_string_β:
                                                                                        jmp   n812_lit_string_α
.Lx1085_0:
                        .quad            .Lx1085_0_s
.Lx1085_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n779_assign_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx1086_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n668_lit_integer_α
n779_assign_β:
                                                                                        jmp   n668_lit_integer_α
.Lx1086_0:
                        .quad            .Lx1086_0_s
.Lx1086_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n780_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n694_lit_string_α
n780_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n781_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n801_subscript_α
n781_var_β:
                                                                                        jmp   n673_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n782_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n675_var_α
n782_assign_β:
                                                                                        jmp   n675_var_α
#-----------------------------------------------------------------------------------------------------------------------
n783_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n802_var_α
n783_var_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n784_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n694_lit_string_α
n784_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n785_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n677_var_α
n785_assign_β:
                                                                                        jmp   n677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n803_var_α
n786_var_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n787_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n694_lit_string_α
n787_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n788_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n679_var_α
n788_assign_β:
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n804_var_α
n789_var_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n790_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n694_lit_string_α
n790_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n791_assign_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n681_var_α
n791_assign_β:
                                                                                        jmp   n681_var_α
#-----------------------------------------------------------------------------------------------------------------------
n792_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n805_var_α
n792_var_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n793_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n694_lit_string_α
n793_assign_β:
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n794_subscript_α:
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2496]
                        mov              rcx, qword ptr [rbp + 2504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n683_lit_string_α
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n806_deref_α
n794_subscript_β:
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n807_binop_α
n795_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n746_var_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_integer_α:
                        mov              qword ptr [rbp + 3792], 6
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n808_op75_α
n796_lit_integer_β:
                                                                                        jmp   n662_var_α
.Lx1103_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n797_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n686_call_α
n797_assign_β:
                                                                                        jmp   n686_call_α
#-----------------------------------------------------------------------------------------------------------------------
n798_match_release_α:
                        mov              rax, qword ptr [rbp + 4248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 4256]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1106_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1106_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1106_1:
                        test             rax, rax
                                                                                        je    .Lx1106_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1106_3]
                        lea              rdx, [rip + .Lx1106_4]
                                                                                        jmp   rax
.Lx1106_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1106_1
.Lx1106_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1106_1
.Lx1106_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1106_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1106_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 4288]
                        mov              r14, qword ptr [rbp + 4296]
                        mov              r15, qword ptr [rbp + 4304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 4312]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 4280]
                                                                                        jmp   n809_call_α
#-----------------------------------------------------------------------------------------------------------------------
n799_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n810_binop_α
n799_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n800_call_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn1109:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1109]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n812_lit_string_α
                                                                                        jmp   n811_assign_α
n800_call_β:
                                                                                        jmp   n812_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n801_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n673_op14_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n813_deref_α
n801_subscript_β:
                                                                                        jmp   n673_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n814_subscript_α
n802_var_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n803_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n815_subscript_α
n803_var_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n804_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n816_subscript_α
n804_var_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n817_subscript_α
n805_var_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n806_deref_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n683_lit_string_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n818_call_α
n806_deref_β:
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n807_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n819_assign_α
n807_binop_β:
                        add              rsp, 32
                                                                                        jmp   n746_var_α
#-----------------------------------------------------------------------------------------------------------------------
n808_op75_α:
                        mov              eax, dword ptr [rbp + 3808]
                        cmp              eax, 7
                                                                                        je    .Lx1118_1
                        cmp              eax, 6
                                                                                        jne   .Lx1118_0
                        mov              eax, dword ptr [rbp + 3792]
                        cmp              eax, 6
                                                                                        jne   .Lx1118_0
.Lx1118_1:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n820_op75_α
.Lx1118_0:
                        lea              rdi, [rbp + 3808]
                        lea              rsi, [rbp + 3792]
                        lea              rdx, [rbp + 3776]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n820_op75_α
n808_op75_β:
                                                                                        jmp   n662_var_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n809_call_α:
                        .section         .rodata
.Lrkfn1120:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1120]
                        lea              rsi, [rbp + 4368]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n822_lit_string_α
                                                                                        jmp   n821_assign_α
n809_call_β:
                                                                                        jmp   n822_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n810_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1121_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1121_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n823_binop_α
.Lx1121_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1121_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1121_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n823_binop_α
n810_binop_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n811_assign_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n812_lit_string_α
n811_assign_β:
                                                                                        jmp   n812_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              dword ptr [rbp + 2836], 5
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n824_call_α
n812_lit_string_β:
                                                                                        jmp   n835_lit_string_α
.Lx1123_0:
                        .quad            .Lx1123_0_s
.Lx1123_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n813_deref_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n673_op14_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n825_assign_α
n813_deref_β:
                                                                                        jmp   n673_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n814_subscript_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n730_lit_string_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n826_deref_α
n814_subscript_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n815_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n827_deref_α
n815_subscript_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n816_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n738_lit_string_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n828_deref_α
n816_subscript_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_subscript_α:
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n742_lit_string_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n829_deref_α
n817_subscript_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n818_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1130_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1130_5
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1130_6]
                        lea              rdx, [rip + .Lx1130_7]
                                                                                        jmp   rax
.Lx1130_6:
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
                                                                                        jmp   .Lx1130_2
.Lx1130_7:
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
                                                                                        jmp   .Lx1130_2
.Lx1130_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1130_20
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1130_21
.Lx1130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             rt_arg_stage@PLT
.Lx1130_21:
                        mov              rdi, qword ptr [rip + .Lx1130_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1130_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1130_3]
                        lea              rdx, [rip + .Lx1130_4]
                                                                                        jmp   rax
.Lx1130_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1130_2
.Lx1130_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1130_2
.Lx1130_1:
                        call             rt_faildescr@PLT
.Lx1130_2:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n683_lit_string_α
                                                                                        jmp   n830_unop_α
n818_call_β:
                                                                                        jmp   n683_lit_string_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n819_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n746_var_α
n819_assign_β:
                                                                                        jmp   n746_var_α
#-----------------------------------------------------------------------------------------------------------------------
n820_op75_α:
                        mov              eax, dword ptr [rbp + 3792]
                        cmp              eax, 7
                                                                                        je    .Lx1133_1
                        cmp              eax, 6
                                                                                        jne   .Lx1133_0
                        mov              eax, dword ptr [rbp + 3808]
                        cmp              eax, 6
                                                                                        jne   .Lx1133_0
.Lx1133_1:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n831_op77_α
.Lx1133_0:
                        lea              rdi, [rbp + 3792]
                        lea              rsi, [rbp + 3808]
                        lea              rdx, [rbp + 3760]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n831_op77_α
n820_op75_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n821_assign_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              rdx, qword ptr [rbp + 4360]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n822_lit_string_α
n821_assign_β:
                                                                                        jmp   n822_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n832_var_α
n822_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1135_0:
                        .quad            .Lx1135_0_s
.Lx1135_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n823_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n833_assign_α
n823_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n824_call_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn1138:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1138]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n835_lit_string_α
                                                                                        jmp   n834_assign_α
n824_call_β:
                                                                                        jmp   n835_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n825_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n673_op14_α
n825_assign_β:
                                                                                        jmp   n673_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n826_deref_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n730_lit_string_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n836_call_α
n826_deref_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n827_deref_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n837_call_α
n827_deref_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n828_deref_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n738_lit_string_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n838_call_α
n828_deref_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n829_deref_α:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n742_lit_string_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n839_call_α
n829_deref_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_unop_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n840_assign_var_α
n830_unop_β:
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_op77_α:
                        lea              rdi, [rbp + 3776]
                        lea              rsi, [rbp + 3760]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n662_var_α
                                                                                        jmp   n841_var_α
n831_op77_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n842_var_α
n832_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1148_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n833_assign_β:
                                                                                        jmp   main_γ
.Lx1148_0:
                        .quad            .Lx1148_0_s
.Lx1148_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n834_assign_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n835_lit_string_α
n834_assign_β:
                                                                                        jmp   n835_lit_string_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              dword ptr [rbp + 2900], 5
                        mov              rax, qword ptr [rip + .Lx1150_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n843_call_α
n835_lit_string_β:
                                                                                        jmp   n852_lit_string_α
.Lx1150_0:
                        .quad            .Lx1150_0_s
.Lx1150_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n836_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1152_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1152_5
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1152_6]
                        lea              rdx, [rip + .Lx1152_7]
                                                                                        jmp   rax
.Lx1152_6:
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
                                                                                        jmp   .Lx1152_2
.Lx1152_7:
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
                                                                                        jmp   .Lx1152_2
.Lx1152_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1152_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1152_21
.Lx1152_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx1152_21:
                        mov              rdi, qword ptr [rip + .Lx1152_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1152_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1152_3]
                        lea              rdx, [rip + .Lx1152_4]
                                                                                        jmp   rax
.Lx1152_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1152_2
.Lx1152_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1152_2
.Lx1152_1:
                        call             rt_faildescr@PLT
.Lx1152_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n730_lit_string_α
                                                                                        jmp   n844_var_α
n836_call_β:
                                                                                        jmp   n730_lit_string_α
.Lx1152_0:
                        .quad            .Lx1152_0_s
.Lx1152_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n837_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1154_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1154_5
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1154_6]
                        lea              rdx, [rip + .Lx1154_7]
                                                                                        jmp   rax
.Lx1154_6:
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
                                                                                        jmp   .Lx1154_2
.Lx1154_7:
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
                                                                                        jmp   .Lx1154_2
.Lx1154_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1154_20
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1154_21
.Lx1154_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx1154_21:
                        mov              rdi, qword ptr [rip + .Lx1154_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1154_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1154_3]
                        lea              rdx, [rip + .Lx1154_4]
                                                                                        jmp   rax
.Lx1154_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1154_2
.Lx1154_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1154_2
.Lx1154_1:
                        call             rt_faildescr@PLT
.Lx1154_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                                                                                        jmp   n845_var_α
n837_call_β:
                                                                                        jmp   n734_lit_string_α
.Lx1154_0:
                        .quad            .Lx1154_0_s
.Lx1154_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n838_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1156_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1156_5
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1156_6]
                        lea              rdx, [rip + .Lx1156_7]
                                                                                        jmp   rax
.Lx1156_6:
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
                                                                                        jmp   .Lx1156_2
.Lx1156_7:
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
                                                                                        jmp   .Lx1156_2
.Lx1156_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1156_20
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1156_21
.Lx1156_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx1156_21:
                        mov              rdi, qword ptr [rip + .Lx1156_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1156_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1156_3]
                        lea              rdx, [rip + .Lx1156_4]
                                                                                        jmp   rax
.Lx1156_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1156_2
.Lx1156_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1156_2
.Lx1156_1:
                        call             rt_faildescr@PLT
.Lx1156_2:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n738_lit_string_α
                                                                                        jmp   n846_var_α
n838_call_β:
                                                                                        jmp   n738_lit_string_α
.Lx1156_0:
                        .quad            .Lx1156_0_s
.Lx1156_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n839_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1158_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1158_5
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1158_6]
                        lea              rdx, [rip + .Lx1158_7]
                                                                                        jmp   rax
.Lx1158_6:
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
                                                                                        jmp   .Lx1158_2
.Lx1158_7:
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
                                                                                        jmp   .Lx1158_2
.Lx1158_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1158_20
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1158_21
.Lx1158_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx1158_21:
                        mov              rdi, qword ptr [rip + .Lx1158_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1158_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1158_3]
                        lea              rdx, [rip + .Lx1158_4]
                                                                                        jmp   rax
.Lx1158_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1158_2
.Lx1158_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1158_2
.Lx1158_1:
                        call             rt_faildescr@PLT
.Lx1158_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n742_lit_string_α
                                                                                        jmp   n847_var_α
n839_call_β:
                                                                                        jmp   n742_lit_string_α
.Lx1158_0:
                        .quad            .Lx1158_0_s
.Lx1158_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n840_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n683_lit_string_α
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n683_lit_string_α
n840_assign_var_β:
                                                                                        jmp   n683_lit_string_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n848_var_α
n841_var_β:
                        add              rsp, 16
                                                                                        jmp   n849_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n850_binop_α
n842_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n843_call_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn1163:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1163]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n852_lit_string_α
                                                                                        jmp   n851_assign_α
n843_call_β:
                                                                                        jmp   n852_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n853_binop_α
n844_var_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n854_binop_α
n845_var_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n855_binop_α
n846_var_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n856_binop_α
n847_var_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n848_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n857_binop_α
n848_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n849_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n849_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1169_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n858_assign_α
n849_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n866_var_α
.Lx1169_0:
                        .quad            .Lx1169_0_s
.Lx1169_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n850_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1170_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx1170_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n859_binop_α
.Lx1170_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1170_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1170_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n859_binop_α
n850_binop_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n852_lit_string_α
n851_assign_β:
                                                                                        jmp   n852_lit_string_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n852_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              dword ptr [rbp + 2964], 5
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n860_call_α
n852_lit_string_β:
                                                                                        jmp   n869_lit_string_α
.Lx1172_0:
                        .quad            .Lx1172_0_s
.Lx1172_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n853_binop_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx1173_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx1173_0
                        mov              rax, qword ptr [rbp + 872]
                        mov              rcx, qword ptr [rbp + 984]
                        add              rax, rcx
                        mov              qword ptr [rbp + 848], 6
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n861_assign_var_α
.Lx1173_0:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n730_lit_string_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n861_assign_var_α
n853_binop_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n854_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx1174_0
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 6
                                                                                        jne   .Lx1174_0
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, qword ptr [rbp + 1416]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n862_assign_var_α
.Lx1174_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n862_assign_var_α
n854_binop_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n855_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx1175_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx1175_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, qword ptr [rbp + 1848]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n863_assign_var_α
.Lx1175_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n738_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n863_assign_var_α
n855_binop_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n856_binop_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n742_lit_string_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n864_assign_var_α
n856_binop_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n857_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n865_assign_α
n857_binop_β:
                        add              rsp, 32
                                                                                        jmp   n849_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n858_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n866_var_α
n858_assign_β:
                                                                                        jmp   n866_var_α
#-----------------------------------------------------------------------------------------------------------------------
n859_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n867_assign_α
n859_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n860_call_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn1181:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1181]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n869_lit_string_α
                                                                                        jmp   n868_assign_α
n860_call_β:
                                                                                        jmp   n869_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n861_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n730_lit_string_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n730_lit_string_α
n861_assign_var_β:
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n862_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n734_lit_string_α
n862_assign_var_β:
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n863_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n738_lit_string_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n738_lit_string_α
n863_assign_var_β:
                                                                                        jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n864_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n742_lit_string_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n742_lit_string_α
n864_assign_var_β:
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n865_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n849_lit_string_α
n865_assign_β:
                                                                                        jmp   n849_lit_string_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n866_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n870_call_α
n866_var_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n867_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1188_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n867_assign_β:
                                                                                        jmp   main_γ
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n868_assign_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n869_lit_string_α
n868_assign_β:
                                                                                        jmp   n869_lit_string_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n869_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              dword ptr [rbp + 3028], 5
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n871_call_α
n869_lit_string_β:
                                                                                        jmp   n874_lit_string_α
.Lx1190_0:
                        .quad            .Lx1190_0_s
.Lx1190_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n870_call_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn1192:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1192]
                        lea              rsi, [rbp + 4000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n662_var_α
                                                                                        jmp   n872_lit_integer_α
n870_call_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n871_call_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn1194:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1194]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n874_lit_string_α
                                                                                        jmp   n873_assign_α
n871_call_β:
                                                                                        jmp   n874_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n872_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx1195_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n875_op75_α
n872_lit_integer_β:
                                                                                        jmp   n662_var_α
.Lx1195_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n873_assign_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n874_lit_string_α
n873_assign_β:
                                                                                        jmp   n874_lit_string_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n874_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              dword ptr [rbp + 3092], 5
                        mov              rax, qword ptr [rip + .Lx1197_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n876_call_α
n874_lit_string_β:
                                                                                        jmp   n879_lit_string_α
.Lx1197_0:
                        .quad            .Lx1197_0_s
.Lx1197_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n875_op75_α:
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 7
                                                                                        je    .Lx1199_1
                        cmp              eax, 6
                                                                                        jne   .Lx1199_0
                        mov              eax, dword ptr [rbp + 3968]
                        cmp              eax, 6
                                                                                        jne   .Lx1199_0
.Lx1199_1:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n877_op75_α
.Lx1199_0:
                        lea              rdi, [rbp + 3984]
                        lea              rsi, [rbp + 3968]
                        lea              rdx, [rbp + 3952]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n877_op75_α
n875_op75_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n876_call_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn1201:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1201]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n879_lit_string_α
                                                                                        jmp   n878_assign_α
n876_call_β:
                                                                                        jmp   n879_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n877_op75_α:
                        mov              eax, dword ptr [rbp + 3968]
                        cmp              eax, 7
                                                                                        je    .Lx1203_1
                        cmp              eax, 6
                                                                                        jne   .Lx1203_0
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 6
                                                                                        jne   .Lx1203_0
.Lx1203_1:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n880_op77_α
.Lx1203_0:
                        lea              rdi, [rbp + 3968]
                        lea              rsi, [rbp + 3984]
                        lea              rdx, [rbp + 3936]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n880_op77_α
n877_op75_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n878_assign_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              rdx, qword ptr [rbp + 3048]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n879_lit_string_α
n878_assign_β:
                                                                                        jmp   n879_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n879_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              dword ptr [rbp + 3156], 5
                        mov              rax, qword ptr [rip + .Lx1205_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n881_call_α
n879_lit_string_β:
                                                                                        jmp   n884_lit_string_α
.Lx1205_0:
                        .quad            .Lx1205_0_s
.Lx1205_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n880_op77_α:
                        lea              rdi, [rbp + 3952]
                        lea              rsi, [rbp + 3936]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n662_var_α
                                                                                        jmp   n882_var_α
n880_op77_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n881_call_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lrkfn1209:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1209]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n884_lit_string_α
                                                                                        jmp   n883_assign_α
n881_call_β:
                                                                                        jmp   n884_lit_string_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n885_var_α
n882_var_β:
                        add              rsp, 16
                                                                                        jmp   n886_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n883_assign_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n884_lit_string_α
n883_assign_β:
                                                                                        jmp   n884_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n884_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              dword ptr [rbp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx1212_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n887_call_α
n884_lit_string_β:
                                                                                        jmp   n891_lit_string_α
.Lx1212_0:
                        .quad            .Lx1212_0_s
.Lx1212_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n888_binop_α
n885_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n886_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n886_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n889_assign_α
n886_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n662_var_α
.Lx1214_0:
                        .quad            .Lx1214_0_s
.Lx1214_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n887_call_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn1216:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1216]
                        lea              rsi, [rbp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n891_lit_string_α
                                                                                        jmp   n890_assign_α
n887_call_β:
                                                                                        jmp   n891_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_assign_α
n888_binop_β:
                        add              rsp, 32
                                                                                        jmp   n886_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n889_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n662_var_α
n889_assign_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n890_assign_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n891_lit_string_α
n890_assign_β:
                                                                                        jmp   n891_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n891_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              dword ptr [rbp + 3300], 4
                        mov              rax, qword ptr [rip + .Lx1220_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n893_lit_integer_α
n891_lit_string_β:
                                                                                        jmp   n895_lit_integer_α
.Lx1220_0:
                        .quad            .Lx1220_0_s
.Lx1220_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n886_lit_string_α
n892_assign_β:
                                                                                        jmp   n886_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx1222_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n894_call_α
n893_lit_integer_β:
                                                                                        jmp   n895_lit_integer_α
.Lx1222_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n894_call_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn1224:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1224]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n895_lit_integer_α
                                                                                        jmp   n895_lit_integer_α
n894_call_β:
                                                                                        jmp   n895_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n895_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, qword ptr [rip + .Lx1225_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n896_call_α
n895_lit_integer_β:
                                                                                        jmp   n898_call_α
.Lx1225_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n896_call_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        .section         .rodata
.Lbynamefn349:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn349]
                        lea              rsi, [rbp + 3344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n898_call_α
                                                                                        jmp   n897_assign_α
n896_call_β:
                                                                                        jmp   n898_call_α
#-----------------------------------------------------------------------------------------------------------------------
n897_assign_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n898_call_α
n897_assign_β:
                                                                                        jmp   n898_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:
                        .section         .rodata
.Lrkfn1229:             .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1229]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n900_var_α
                                                                                        jmp   n899_assign_α
n898_call_β:
                                                                                        jmp   n900_var_α
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n900_var_α
n899_assign_β:
                                                                                        jmp   n900_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n901_lit_string_α
n900_var_β:
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n901_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              dword ptr [rbp + 3444], 1
                        mov              rax, qword ptr [rip + .Lx1232_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n903_subscript_α
n901_lit_string_β:
                                                                                        jmp   n902_var_α
.Lx1232_0:
                        .quad            .Lx1232_0_s
.Lx1232_0_s:
                        .string          "x"
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n904_lit_string_α
n902_var_β:
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n903_subscript_α:
                        mov              rdi, qword ptr [rbp + 3424]
                        mov              rsi, qword ptr [rbp + 3432]
                        mov              rdx, qword ptr [rbp + 3440]
                        mov              rcx, qword ptr [rbp + 3448]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n902_var_α
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n906_lit_integer_α
n903_subscript_β:
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n904_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n907_subscript_α
n904_lit_string_β:
                                                                                        jmp   n905_var_α
.Lx1235_0:
                        .quad            .Lx1235_0_s
.Lx1235_0_s:
                        .string          "y"
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n905_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n908_lit_string_α
n905_var_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n906_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n909_assign_var_α
n906_lit_integer_β:
                                                                                        jmp   n902_var_α
.Lx1237_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n907_subscript_α:
                        mov              rdi, qword ptr [rbp + 3504]
                        mov              rsi, qword ptr [rbp + 3512]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n905_var_α
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n910_lit_integer_α
n907_subscript_β:
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n908_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx1239_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n911_subscript_α
n908_lit_string_β:
                                                                                        jmp   n662_var_α
.Lx1239_0:
                        .quad            .Lx1239_0_s
.Lx1239_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n909_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3480]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n902_var_α
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n902_var_α
n909_assign_var_β:
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx1241_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n912_assign_var_α
n910_lit_integer_β:
                                                                                        jmp   n905_var_α
.Lx1241_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n911_subscript_α:
                        mov              rdi, qword ptr [rbp + 3584]
                        mov              rsi, qword ptr [rbp + 3592]
                        mov              rdx, qword ptr [rbp + 3600]
                        mov              rcx, qword ptr [rbp + 3608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n662_var_α
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n913_lit_integer_α
n911_subscript_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
n912_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3536]
                        mov              rsi, qword ptr [rbp + 3544]
                        mov              rdx, qword ptr [rbp + 3552]
                        mov              rcx, qword ptr [rbp + 3560]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n905_var_α
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n905_var_α
n912_assign_var_β:
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_integer_α:
                        mov              qword ptr [rbp + 3632], 6
                        mov              rax, qword ptr [rip + .Lx1244_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n914_assign_var_α
n913_lit_integer_β:
                                                                                        jmp   n662_var_α
.Lx1244_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n914_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3616]
                        mov              rsi, qword ptr [rbp + 3624]
                        mov              rdx, qword ptr [rbp + 3632]
                        mov              rcx, qword ptr [rbp + 3640]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n662_var_α
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n662_var_α
n914_assign_var_β:
                                                                                        jmp   n662_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4592]
                        add              rsp, 4600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4592]
                        add              rsp, 4600
                        ret
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "V"
.S2:                    .string          "I"
.S3:                    .string          "X"
.S4:                    .string          "A"
.S5:                    .string          "F"
.S6:                    .string          "*NEG"
.S7:                    .string          "*MUL"
.S8:                    .string          "*DIV"
.S9:                    .string          "T"
.S10:                   .string          "*ADD"
.S11:                   .string          "*SUB"
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
