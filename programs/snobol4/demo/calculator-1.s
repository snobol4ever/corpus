                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__EMIT_α
proc_LBL__EMIT_α:
                        .global          proc_LBL__EMIT_α
                        .global          proc_LBL__EMIT_β
                        .global          proc_LBL__EMIT_γ
                        .global          proc_LBL__EMIT_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n3_subscript_α
.Lx18_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx19_240
                        add              rsp, 16
                                                                                        jmp   n7_lit_integer_α
.Lx19_240:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        add              rsp, 16
                                                                                        jmp   n4_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx20_240
                        add              rsp, 16
                                                                                        jmp   n7_lit_integer_α
.Lx20_240:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n5_call_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx22_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx22_5
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_6]
                        lea              rdx, [rip + .Lx22_7]
                                                                                        jmp   rax
.Lx22_6:
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
                                                                                        jmp   .Lx22_2
.Lx22_7:
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
                                                                                        jmp   .Lx22_2
.Lx22_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx22_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx22_21
.Lx22_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx22_21:
                        mov              rdi, qword ptr [rip + .Lx22_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx22_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_3]
                        lea              rdx, [rip + .Lx22_4]
                                                                                        jmp   rax
.Lx22_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx22_2
.Lx22_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx22_2
.Lx22_1:
                        call             rt_faildescr@PLT
.Lx22_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n7_lit_integer_α
                                                                                        jmp   n6_assign_α
n5_call_β:
                                                                                        jmp   n7_lit_integer_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx23_0]
                        call             NV_SET_fn@PLT
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
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx24_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n9_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n10_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn28:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n11_assign_α
n10_call_β:
                                                                                        jmp   n12_lit_string_α
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
                                                                                        je    n15_save_restore_α
                                                                                        jmp   n14_save_restore_α
n13_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__PSH_α
proc_LBL__PSH_α:
                        .global          proc_LBL__PSH_α
                        .global          proc_LBL__PSH_β
                        .global          proc_LBL__PSH_γ
                        .global          proc_LBL__PSH_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n40_binop_α
.Lx52_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx53_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx53_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
.Lx53_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx53_240
                        add              rsp, 32
                                                                                        jmp   n42_var_α
.Lx53_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n42_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n44_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx57_240
                        add              rsp, 16
                                                                                        jmp   n46_lit_string_α
.Lx57_240:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n47_call_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn61:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n49_save_restore_α
                                                                                        jmp   n48_save_restore_α
n47_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DRF_α
proc_LBL__DRF_α:
                        .global          proc_LBL__DRF_α
                        .global          proc_LBL__DRF_β
                        .global          proc_LBL__DRF_γ
                        .global          proc_LBL__DRF_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n81_var_α
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
                                                                                        jmp   n69_match_sequence_α
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
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_match_sequence_α:
                                                                                        jmp   n79_lit_integer_α
n69_match_sequence_as:
                                                                                        jmp   n70_match_release_α
n69_match_sequence_β:
                                                                                        jmp   n77_match_rpos_β
n69_match_sequence_af:
                                                                                        jmp   n68_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_release_α:
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
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n71_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n72_var_α
n71_var_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n73_subscript_α
n72_var_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx94_240
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
.Lx94_240:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        add              rsp, 16
                                                                                        jmp   n74_deref_α
n73_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
.Lx95_240:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        add              rsp, 16
                                                                                        jmp   n75_assign_α
n74_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n83_save_restore_α
n75_assign_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 536], rax
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
                                                                                        jmp   n70_match_release_α
n77_match_rpos_β:
                                                                                        jmp   n78_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n78_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n68_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n68_match_head_β
                        add              r14d, 1
                                                                                        jmp   n76_lit_integer_α
n78_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n68_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n80_match_pos_α
n79_lit_integer_β:
                                                                                        jmp   n68_match_head_β
.Lx101_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n80_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n68_match_head_β
                                                                                        jmp   n78_match_any_α
n80_match_pos_β:
                                                                                        jmp   n68_match_head_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_assign_α
n81_var_β:
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n83_save_restore_α
n82_assign_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ADD_α
proc_LBL__ADD_α:
                        .global          proc_LBL__ADD_α
                        .global          proc_LBL__ADD_β
                        .global          proc_LBL__ADD_γ
                        .global          proc_LBL__ADD_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n110_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n110_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                                                                                        jmp   n114_var_α
.Lx139_240:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        add              rsp, 16
                                                                                        jmp   n111_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx140_240
                        add              rsp, 16
                                                                                        jmp   n114_var_α
.Lx140_240:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        add              rsp, 16
                                                                                        jmp   n112_call_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx142_5
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx142_6]
                        lea              rdx, [rip + .Lx142_7]
                                                                                        jmp   rax
.Lx142_6:
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
                                                                                        jmp   .Lx142_2
.Lx142_7:
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
                                                                                        jmp   .Lx142_2
.Lx142_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx142_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx142_21
.Lx142_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx142_21:
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx142_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4]
                                                                                        jmp   rax
.Lx142_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx142_2
.Lx142_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx142_2
.Lx142_1:
                        call             rt_faildescr@PLT
.Lx142_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n114_var_α
                                                                                        jmp   n113_assign_α
n112_call_β:
                                                                                        jmp   n114_var_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n114_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n116_binop_α
.Lx145_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx146_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_assign_α
.Lx146_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx146_240
                        add              rsp, 32
                                                                                        jmp   n118_var_α
.Lx146_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n118_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n120_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx150_240
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
.Lx150_240:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        add              rsp, 16
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n123_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
.Lx153_240:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n124_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
.Lx154_240:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n125_call_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx156_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx156_5
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx156_6]
                        lea              rdx, [rip + .Lx156_7]
                                                                                        jmp   rax
.Lx156_6:
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
                                                                                        jmp   .Lx156_2
.Lx156_7:
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
                                                                                        jmp   .Lx156_2
.Lx156_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx156_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx156_21
.Lx156_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx156_21:
                        mov              rdi, qword ptr [rip + .Lx156_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx156_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx156_3]
                        lea              rdx, [rip + .Lx156_4]
                                                                                        jmp   rax
.Lx156_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx156_2
.Lx156_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx156_2
.Lx156_1:
                        call             rt_faildescr@PLT
.Lx156_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n126_var_α
n125_call_β:
                                                                                        jmp   n129_lit_string_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n127_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx158_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx158_0
                        mov              rax, qword ptr [rbp + 872]
                        mov              rcx, qword ptr [rbp + 984]
                        add              rax, rcx
                        mov              qword ptr [rbp + 848], 6
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n128_assign_var_α
.Lx158_0:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n128_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n129_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n130_call_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn162:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n132_lit_string_α
                                                                                        jmp   n131_assign_α
n130_call_β:
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n133_call_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn166:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n135_save_restore_α
                                                                                        jmp   n134_save_restore_α
n133_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__SUB_α
proc_LBL__SUB_α:
                        .global          proc_LBL__SUB_α
                        .global          proc_LBL__SUB_β
                        .global          proc_LBL__SUB_γ
                        .global          proc_LBL__SUB_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n174_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n174_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx203_240
                        add              rsp, 16
                                                                                        jmp   n178_var_α
.Lx203_240:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n175_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx204_240
                        add              rsp, 16
                                                                                        jmp   n178_var_α
.Lx204_240:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n176_call_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx206_5
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx206_6]
                        lea              rdx, [rip + .Lx206_7]
                                                                                        jmp   rax
.Lx206_6:
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
                                                                                        jmp   .Lx206_2
.Lx206_7:
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
                                                                                        jmp   .Lx206_2
.Lx206_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx206_20
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx206_21
.Lx206_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx206_21:
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx206_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx206_3]
                        lea              rdx, [rip + .Lx206_4]
                                                                                        jmp   rax
.Lx206_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx206_2
.Lx206_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx206_2
.Lx206_1:
                        call             rt_faildescr@PLT
.Lx206_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n178_var_α
                                                                                        jmp   n177_assign_α
n176_call_β:
                                                                                        jmp   n178_var_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n178_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n180_binop_α
.Lx209_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx210_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx210_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n181_assign_α
.Lx210_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx210_240
                        add              rsp, 32
                                                                                        jmp   n182_var_α
.Lx210_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n182_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n184_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx214_240:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        add              rsp, 16
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n187_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n187_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx217_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx217_240:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        add              rsp, 16
                                                                                        jmp   n188_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx218_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx218_240:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        add              rsp, 16
                                                                                        jmp   n189_call_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx220_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx220_5
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx220_6]
                        lea              rdx, [rip + .Lx220_7]
                                                                                        jmp   rax
.Lx220_6:
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
                                                                                        jmp   .Lx220_2
.Lx220_7:
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
                                                                                        jmp   .Lx220_2
.Lx220_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx220_20
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx220_21
.Lx220_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx220_21:
                        mov              rdi, qword ptr [rip + .Lx220_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx220_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx220_3]
                        lea              rdx, [rip + .Lx220_4]
                                                                                        jmp   rax
.Lx220_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx220_2
.Lx220_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx220_2
.Lx220_1:
                        call             rt_faildescr@PLT
.Lx220_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n193_lit_string_α
                                                                                        jmp   n190_var_α
n189_call_β:
                                                                                        jmp   n193_lit_string_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n191_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, qword ptr [rbp + 1416]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n192_assign_var_α
.Lx222_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n193_lit_string_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n192_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n193_lit_string_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n193_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              dword ptr [rbp + 1492], 2
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n194_call_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn226:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n195_assign_α
n194_call_β:
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n197_call_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn230:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n199_save_restore_α
                                                                                        jmp   n198_save_restore_α
n197_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__MUL_α
proc_LBL__MUL_α:
                        .global          proc_LBL__MUL_α
                        .global          proc_LBL__MUL_β
                        .global          proc_LBL__MUL_γ
                        .global          proc_LBL__MUL_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n238_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n238_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx267_240
                        add              rsp, 16
                                                                                        jmp   n242_var_α
.Lx267_240:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        add              rsp, 16
                                                                                        jmp   n239_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx268_240
                        add              rsp, 16
                                                                                        jmp   n242_var_α
.Lx268_240:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n240_call_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx270_5
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx270_6]
                        lea              rdx, [rip + .Lx270_7]
                                                                                        jmp   rax
.Lx270_6:
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
                                                                                        jmp   .Lx270_2
.Lx270_7:
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
                                                                                        jmp   .Lx270_2
.Lx270_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_20
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx270_21
.Lx270_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx270_21:
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx270_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4]
                                                                                        jmp   rax
.Lx270_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_1:
                        call             rt_faildescr@PLT
.Lx270_2:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n242_var_α
                                                                                        jmp   n241_assign_α
n240_call_β:
                                                                                        jmp   n242_var_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n242_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n243_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n244_binop_α
.Lx273_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx274_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx274_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n245_assign_α
.Lx274_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx274_240
                        add              rsp, 32
                                                                                        jmp   n246_var_α
.Lx274_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n246_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n248_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n248_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx278_240
                        add              rsp, 16
                                                                                        jmp   n257_lit_string_α
.Lx278_240:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        add              rsp, 16
                                                                                        jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n251_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n251_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx281_240
                        add              rsp, 16
                                                                                        jmp   n257_lit_string_α
.Lx281_240:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        add              rsp, 16
                                                                                        jmp   n252_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx282_240
                        add              rsp, 16
                                                                                        jmp   n257_lit_string_α
.Lx282_240:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        add              rsp, 16
                                                                                        jmp   n253_call_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx284_5
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx284_6]
                        lea              rdx, [rip + .Lx284_7]
                                                                                        jmp   rax
.Lx284_6:
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
                                                                                        jmp   .Lx284_2
.Lx284_7:
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
                                                                                        jmp   .Lx284_2
.Lx284_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx284_20
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx284_21
.Lx284_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx284_21:
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx284_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx284_3]
                        lea              rdx, [rip + .Lx284_4]
                                                                                        jmp   rax
.Lx284_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx284_2
.Lx284_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx284_2
.Lx284_1:
                        call             rt_faildescr@PLT
.Lx284_2:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n257_lit_string_α
                                                                                        jmp   n254_var_α
n253_call_β:
                                                                                        jmp   n257_lit_string_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n255_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx286_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx286_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, qword ptr [rbp + 1848]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n256_assign_var_α
.Lx286_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n257_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n256_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n257_lit_string_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n257_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              dword ptr [rbp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n258_call_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn290:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n260_lit_string_α
                                                                                        jmp   n259_assign_α
n258_call_β:
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n261_call_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn294:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n263_save_restore_α
                                                                                        jmp   n262_save_restore_α
n261_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__DIV_α
proc_LBL__DIV_α:
                        .global          proc_LBL__DIV_α
                        .global          proc_LBL__DIV_β
                        .global          proc_LBL__DIV_γ
                        .global          proc_LBL__DIV_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n302_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n302_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx331_240
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx331_240:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        add              rsp, 16
                                                                                        jmp   n303_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx332_240
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx332_240:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        add              rsp, 16
                                                                                        jmp   n304_call_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx334_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx334_5
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx334_6]
                        lea              rdx, [rip + .Lx334_7]
                                                                                        jmp   rax
.Lx334_6:
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
                                                                                        jmp   .Lx334_2
.Lx334_7:
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
                                                                                        jmp   .Lx334_2
.Lx334_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx334_20
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx334_21
.Lx334_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        call             rt_arg_stage@PLT
.Lx334_21:
                        mov              rdi, qword ptr [rip + .Lx334_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx334_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx334_3]
                        lea              rdx, [rip + .Lx334_4]
                                                                                        jmp   rax
.Lx334_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx334_2
.Lx334_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx334_2
.Lx334_1:
                        call             rt_faildescr@PLT
.Lx334_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n306_var_α
                                                                                        jmp   n305_assign_α
n304_call_β:
                                                                                        jmp   n306_var_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n306_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n307_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n308_binop_α
.Lx337_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n308_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx338_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx338_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n309_assign_α
.Lx338_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx338_240
                        add              rsp, 32
                                                                                        jmp   n310_var_α
.Lx338_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n309_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n310_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n312_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n312_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_α
.Lx342_240:
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        add              rsp, 16
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n315_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx345_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_α
.Lx345_240:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        add              rsp, 16
                                                                                        jmp   n316_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx346_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_α
.Lx346_240:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        add              rsp, 16
                                                                                        jmp   n317_call_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx348_5
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_6]
                        lea              rdx, [rip + .Lx348_7]
                                                                                        jmp   rax
.Lx348_6:
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
                                                                                        jmp   .Lx348_2
.Lx348_7:
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
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_20
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx348_21
.Lx348_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx348_21:
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n321_lit_string_α
                                                                                        jmp   n318_var_α
n317_call_β:
                                                                                        jmp   n321_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n319_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n321_lit_string_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n320_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n321_lit_string_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n321_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n322_call_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn354:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n324_lit_string_α
                                                                                        jmp   n323_assign_α
n322_call_β:
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n325_call_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn358:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n327_save_restore_α
                                                                                        jmp   n326_save_restore_α
n325_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__NEG_α
proc_LBL__NEG_α:
                        .global          proc_LBL__NEG_α
                        .global          proc_LBL__NEG_β
                        .global          proc_LBL__NEG_γ
                        .global          proc_LBL__NEG_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
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
                                                                                        jmp   n366_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n366_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx384_240
                        add              rsp, 16
                                                                                        jmp   n374_lit_string_α
.Lx384_240:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        add              rsp, 16
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n369_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n369_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2496]
                        mov              rcx, qword ptr [rbp + 2504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx387_240
                        add              rsp, 16
                                                                                        jmp   n374_lit_string_α
.Lx387_240:
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        add              rsp, 16
                                                                                        jmp   n370_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n370_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx388_240
                        add              rsp, 16
                                                                                        jmp   n374_lit_string_α
.Lx388_240:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        add              rsp, 16
                                                                                        jmp   n371_call_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx390_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx390_5
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx390_6]
                        lea              rdx, [rip + .Lx390_7]
                                                                                        jmp   rax
.Lx390_6:
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
                                                                                        jmp   .Lx390_2
.Lx390_7:
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
                                                                                        jmp   .Lx390_2
.Lx390_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_20
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx390_21
.Lx390_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             rt_arg_stage@PLT
.Lx390_21:
                        mov              rdi, qword ptr [rip + .Lx390_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx390_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx390_3]
                        lea              rdx, [rip + .Lx390_4]
                                                                                        jmp   rax
.Lx390_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_1:
                        call             rt_faildescr@PLT
.Lx390_2:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
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
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        add              rsp, 16
                                                                                        jmp   n373_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n374_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              dword ptr [rbp + 2612], 2
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n375_call_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn395:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n377_lit_string_α
                                                                                        jmp   n376_assign_α
n375_call_β:
                                                                                        jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n378_call_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn399:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n380_save_restore_α
                                                                                        jmp   n379_save_restore_α
n378_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
                        .global          proc_EMIT_α
                        .global          proc_EMIT_β
                        .global          proc_EMIT_γ
                        .global          proc_EMIT_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n404_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
                        .global          proc_PSH_α
                        .global          proc_PSH_β
                        .global          proc_PSH_γ
                        .global          proc_PSH_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n410_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
                        .global          proc_DRF_α
                        .global          proc_DRF_β
                        .global          proc_DRF_γ
                        .global          proc_DRF_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n416_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
                        .global          proc_ADD_α
                        .global          proc_ADD_β
                        .global          proc_ADD_γ
                        .global          proc_ADD_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n422_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
                        .global          proc_SUB_α
                        .global          proc_SUB_β
                        .global          proc_SUB_γ
                        .global          proc_SUB_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n428_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
                        .global          proc_MUL_α
                        .global          proc_MUL_β
                        .global          proc_MUL_γ
                        .global          proc_MUL_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n434_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
                        .global          proc_DIV_α
                        .global          proc_DIV_β
                        .global          proc_DIV_γ
                        .global          proc_DIV_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n440_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_NEG_α
proc_NEG_α:
                        .global          proc_NEG_α
                        .global          proc_NEG_β
                        .global          proc_NEG_γ
                        .global          proc_NEG_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_NEG_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n446_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
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
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n463_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
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
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n470_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n470_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx478_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n476_match_patref_α
.Lx478_21:
                        lea              rax, [rip + .Lx478_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n475_match_patref_α
.Lx478_22:
                        lea              rax, [rip + .Lx478_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n471_match_sequence_α
n470_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx478_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_match_alternate_as
n470_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx478_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_match_alternate_as
n470_match_alternate_s2:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx478_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_match_alternate_as
.Lx478_40:
                                                                                        jmp   n476_match_patref_β
.Lx478_41:
                                                                                        jmp   n475_match_patref_β
.Lx478_42:
                                                                                        jmp   n471_match_sequence_β
n470_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_γ
n470_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n470_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx478_19:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n474_match_lit_α
n471_match_sequence_as:
                                                                                        jmp   n470_match_alternate_s2
n471_match_sequence_β:
                                                                                        jmp   n472_match_lit_β
n471_match_sequence_af:
                                                                                        jmp   n470_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n472_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n473_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n473_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n470_match_alternate_s2
n472_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n473_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n473_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx483_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx483_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx483_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx483_10
.Lx483_9:
                        xor              eax, eax
.Lx483_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx483_11:
                        test             rax, rax
                                                                                        jz    .Lx483_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx483_4]
                        lea              rdx, [rip + .Lx483_5]
                                                                                        jmp   rax
.Lx483_4:
                                                                                        jmp   n472_match_lit_α
.Lx483_5:
                                                                                        jmp   n474_match_lit_β
.Lx483_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx483_2:
                        test             rax, rax
                                                                                        je    .Lx483_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx483_7]
                        lea              rdx, [rip + .Lx483_8]
                                                                                        jmp   rax
.Lx483_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx483_2
.Lx483_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx483_2
.Lx483_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n474_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx483_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n472_match_lit_α
.Lx483_6:
                        add              rsp, 16
                                                                                        jmp   n474_match_lit_β
n473_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
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
                                                                                        jmp   n473_match_defer_α
n474_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n470_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n475_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx486_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                                                                                        jne   .Lx486_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx486_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx486_10
.Lx486_9:
                        xor              eax, eax
.Lx486_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx486_11:
                        test             rax, rax
                                                                                        jz    .Lx486_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx486_4]
                        lea              rdx, [rip + .Lx486_5]
                                                                                        jmp   rax
.Lx486_4:
                                                                                        jmp   n470_match_alternate_s1
.Lx486_5:
                                                                                        jmp   n470_match_alternate_af
.Lx486_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx486_2:
                        test             rax, rax
                                                                                        je    .Lx486_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx486_7]
                        lea              rdx, [rip + .Lx486_8]
                                                                                        jmp   rax
.Lx486_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx486_2
.Lx486_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx486_2
.Lx486_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n470_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx486_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n470_match_alternate_s1
.Lx486_6:
                        add              rsp, 16
                                                                                        jmp   n470_match_alternate_af
n475_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n476_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx487_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                                                                                        jne   .Lx487_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx487_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx487_10
.Lx487_9:
                        xor              eax, eax
.Lx487_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx487_11:
                        test             rax, rax
                                                                                        jz    .Lx487_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx487_4]
                        lea              rdx, [rip + .Lx487_5]
                                                                                        jmp   rax
.Lx487_4:
                                                                                        jmp   n470_match_alternate_s0
.Lx487_5:
                                                                                        jmp   n470_match_alternate_af
.Lx487_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx487_2
.Lx487_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx487_2
.Lx487_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n470_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx487_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n470_match_alternate_s0
.Lx487_6:
                        add              rsp, 16
                                                                                        jmp   n470_match_alternate_af
n476_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n488_match_alternate_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n488_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx499_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n497_match_patref_α
.Lx499_21:
                        lea              rax, [rip + .Lx499_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n494_match_sequence_α
.Lx499_22:
                        lea              rax, [rip + .Lx499_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n489_match_sequence_α
n488_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx499_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n488_match_alternate_as
n488_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx499_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n488_match_alternate_as
n488_match_alternate_s2:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx499_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n488_match_alternate_as
.Lx499_40:
                                                                                        jmp   n497_match_patref_β
.Lx499_41:
                                                                                        jmp   n494_match_sequence_β
.Lx499_42:
                                                                                        jmp   n489_match_sequence_β
n488_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_PAT$3_γ
n488_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n488_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx499_19:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n493_match_lit_α
n489_match_sequence_as:
                                                                                        jmp   n488_match_alternate_s2
n489_match_sequence_β:
                                                                                        jmp   n492_match_assign_cond_β
n489_match_sequence_af:
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n490_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n491_match_defer_α
n490_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n493_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n491_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx504_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx504_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx504_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx504_10
.Lx504_9:
                        xor              eax, eax
.Lx504_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx504_11:
                        test             rax, rax
                                                                                        jz    .Lx504_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx504_4]
                        lea              rdx, [rip + .Lx504_5]
                                                                                        jmp   rax
.Lx504_4:
                                                                                        jmp   n492_match_assign_cond_α
.Lx504_5:
                                                                                        jmp   n490_match_assign_save_β
.Lx504_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx504_2:
                        test             rax, rax
                                                                                        je    .Lx504_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx504_7]
                        lea              rdx, [rip + .Lx504_8]
                                                                                        jmp   rax
.Lx504_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx504_2
.Lx504_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx504_2
.Lx504_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n490_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx504_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n492_match_assign_cond_α
.Lx504_6:
                        add              rsp, 16
                                                                                        jmp   n490_match_assign_save_β
n491_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n492_match_assign_cond_α:
                        lea              rdi, [rbp + 160]
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
                                                                                        jmp   n488_match_alternate_s2
n492_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n491_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n493_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n488_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n488_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n490_match_assign_save_α
n493_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n494_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n496_match_lit_α
n494_match_sequence_as:
                                                                                        jmp   n488_match_alternate_s1
n494_match_sequence_β:
                                                                                        jmp   n495_match_defer_β
n494_match_sequence_af:
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n495_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx511_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx511_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx511_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx511_10
.Lx511_9:
                        xor              eax, eax
.Lx511_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx511_11:
                        test             rax, rax
                                                                                        jz    .Lx511_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx511_4]
                        lea              rdx, [rip + .Lx511_5]
                                                                                        jmp   rax
.Lx511_4:
                                                                                        jmp   n488_match_alternate_s1
.Lx511_5:
                                                                                        jmp   n496_match_lit_β
.Lx511_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx511_2:
                        test             rax, rax
                                                                                        je    .Lx511_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx511_7]
                        lea              rdx, [rip + .Lx511_8]
                                                                                        jmp   rax
.Lx511_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx511_2
.Lx511_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx511_2
.Lx511_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n496_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx511_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n488_match_alternate_s1
.Lx511_6:
                        add              rsp, 16
                                                                                        jmp   n496_match_lit_β
n495_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n496_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n488_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n488_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n495_match_defer_α
n496_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n488_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n497_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_11
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
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
                                                                                        jmp   n488_match_alternate_s0
.Lx514_5:
                                                                                        jmp   n488_match_alternate_af
.Lx514_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
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
                                                                                        js    n488_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx514_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n488_match_alternate_s0
.Lx514_6:
                        add              rsp, 16
                                                                                        jmp   n488_match_alternate_af
n497_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n515_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n515_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n528_match_patref_α
n515_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n515_match_sequence_β:
                                                                                        jmp   n516_match_alternate_β
n515_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n516_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx532_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n523_match_sequence_α
.Lx532_21:
                        lea              rax, [rip + .Lx532_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n518_match_sequence_α
.Lx532_22:
                        lea              rax, [rip + .Lx532_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n517_match_lit_α
n516_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx532_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n516_match_alternate_as
n516_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx532_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n516_match_alternate_as
n516_match_alternate_s2:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx532_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n516_match_alternate_as
.Lx532_40:
                                                                                        jmp   n523_match_sequence_β
.Lx532_41:
                                                                                        jmp   n518_match_sequence_β
.Lx532_42:
                                                                                        jmp   n517_match_lit_β
n516_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_PAT$4_γ
n516_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n516_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx532_19:
                        add              rsp, 32
                                                                                        jmp   n528_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n517_match_lit_α:
                                                                                        jmp   n516_match_alternate_s2
n517_match_lit_β:
                                                                                        jmp   n516_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n518_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n522_match_lit_α
n518_match_sequence_as:
                                                                                        jmp   n516_match_alternate_s1
n518_match_sequence_β:
                                                                                        jmp   n521_match_assign_cond_β
n518_match_sequence_af:
                                                                                        jmp   n516_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n519_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n520_match_defer_α
n519_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n522_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n520_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx539_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx539_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx539_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx539_10
.Lx539_9:
                        xor              eax, eax
.Lx539_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx539_11:
                        test             rax, rax
                                                                                        jz    .Lx539_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx539_4]
                        lea              rdx, [rip + .Lx539_5]
                                                                                        jmp   rax
.Lx539_4:
                                                                                        jmp   n521_match_assign_cond_α
.Lx539_5:
                                                                                        jmp   n519_match_assign_save_β
.Lx539_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx539_2:
                        test             rax, rax
                                                                                        je    .Lx539_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx539_7]
                        lea              rdx, [rip + .Lx539_8]
                                                                                        jmp   rax
.Lx539_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx539_2
.Lx539_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx539_2
.Lx539_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n519_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx539_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n521_match_assign_cond_α
.Lx539_6:
                        add              rsp, 16
                                                                                        jmp   n519_match_assign_save_β
n520_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n521_match_assign_cond_α:
                        lea              rdi, [rbp + 224]
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
                                                                                        jmp   n516_match_alternate_s1
n521_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n520_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n522_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n516_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n516_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n519_match_assign_save_α
n522_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n516_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n523_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n527_match_lit_α
n523_match_sequence_as:
                                                                                        jmp   n516_match_alternate_s0
n523_match_sequence_β:
                                                                                        jmp   n526_match_assign_cond_β
n523_match_sequence_af:
                                                                                        jmp   n516_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n524_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n525_match_defer_α
n524_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n527_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n525_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx548_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx548_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx548_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx548_10
.Lx548_9:
                        xor              eax, eax
.Lx548_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx548_11:
                        test             rax, rax
                                                                                        jz    .Lx548_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx548_4]
                        lea              rdx, [rip + .Lx548_5]
                                                                                        jmp   rax
.Lx548_4:
                                                                                        jmp   n526_match_assign_cond_α
.Lx548_5:
                                                                                        jmp   n524_match_assign_save_β
.Lx548_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx548_2:
                        test             rax, rax
                                                                                        je    .Lx548_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx548_7]
                        lea              rdx, [rip + .Lx548_8]
                                                                                        jmp   rax
.Lx548_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx548_2
.Lx548_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx548_2
.Lx548_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n524_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx548_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n526_match_assign_cond_α
.Lx548_6:
                        add              rsp, 16
                                                                                        jmp   n524_match_assign_save_β
n525_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n526_match_assign_cond_α:
                        lea              rdi, [rbp + 144]
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
                                                                                        jmp   n516_match_alternate_s0
n526_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n525_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n527_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n516_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n516_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n524_match_assign_save_α
n527_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n516_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n528_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_11
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
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
                                                                                        jmp   n516_match_alternate_α
.Lx553_5:
                                                                                        jmp   proc_PAT$4_ω
.Lx553_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx553_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n516_match_alternate_α
.Lx553_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n528_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + n554_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n554_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n567_match_patref_α
n554_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n554_match_sequence_β:
                                                                                        jmp   n555_match_alternate_β
n554_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n555_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx571_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n562_match_sequence_α
.Lx571_21:
                        lea              rax, [rip + .Lx571_22]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n557_match_sequence_α
.Lx571_22:
                        lea              rax, [rip + .Lx571_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n556_match_lit_α
n555_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx571_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n555_match_alternate_as
n555_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx571_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n555_match_alternate_as
n555_match_alternate_s2:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx571_42]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n555_match_alternate_as
.Lx571_40:
                                                                                        jmp   n562_match_sequence_β
.Lx571_41:
                                                                                        jmp   n557_match_sequence_β
.Lx571_42:
                                                                                        jmp   n556_match_lit_β
n555_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_PAT$5_γ
n555_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n555_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx571_19:
                        add              rsp, 32
                                                                                        jmp   n567_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n556_match_lit_α:
                                                                                        jmp   n555_match_alternate_s2
n556_match_lit_β:
                                                                                        jmp   n555_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n557_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n561_match_lit_α
n557_match_sequence_as:
                                                                                        jmp   n555_match_alternate_s1
n557_match_sequence_β:
                                                                                        jmp   n560_match_assign_cond_β
n557_match_sequence_af:
                                                                                        jmp   n555_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n558_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n559_match_defer_α
n558_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n561_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n559_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx578_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx578_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx578_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx578_10
.Lx578_9:
                        xor              eax, eax
.Lx578_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx578_11:
                        test             rax, rax
                                                                                        jz    .Lx578_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx578_4]
                        lea              rdx, [rip + .Lx578_5]
                                                                                        jmp   rax
.Lx578_4:
                                                                                        jmp   n560_match_assign_cond_α
.Lx578_5:
                                                                                        jmp   n558_match_assign_save_β
.Lx578_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx578_2:
                        test             rax, rax
                                                                                        je    .Lx578_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx578_7]
                        lea              rdx, [rip + .Lx578_8]
                                                                                        jmp   rax
.Lx578_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx578_2
.Lx578_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx578_2
.Lx578_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n558_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx578_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n560_match_assign_cond_α
.Lx578_6:
                        add              rsp, 16
                                                                                        jmp   n558_match_assign_save_β
n559_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n560_match_assign_cond_α:
                        lea              rdi, [rbp + 224]
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
                                                                                        jmp   n555_match_alternate_s1
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
                                                                                        jg    n555_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n555_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n558_match_assign_save_α
n561_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n555_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n562_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n566_match_lit_α
n562_match_sequence_as:
                                                                                        jmp   n555_match_alternate_s0
n562_match_sequence_β:
                                                                                        jmp   n565_match_assign_cond_β
n562_match_sequence_af:
                                                                                        jmp   n555_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n563_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n564_match_defer_α
n563_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n566_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n564_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx587_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx587_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx587_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx587_10
.Lx587_9:
                        xor              eax, eax
.Lx587_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx587_11:
                        test             rax, rax
                                                                                        jz    .Lx587_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx587_4]
                        lea              rdx, [rip + .Lx587_5]
                                                                                        jmp   rax
.Lx587_4:
                                                                                        jmp   n565_match_assign_cond_α
.Lx587_5:
                                                                                        jmp   n563_match_assign_save_β
.Lx587_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx587_2:
                        test             rax, rax
                                                                                        je    .Lx587_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx587_7]
                        lea              rdx, [rip + .Lx587_8]
                                                                                        jmp   rax
.Lx587_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx587_2
.Lx587_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx587_2
.Lx587_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n563_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx587_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n565_match_assign_cond_α
.Lx587_6:
                        add              rsp, 16
                                                                                        jmp   n563_match_assign_save_β
n564_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n565_match_assign_cond_α:
                        lea              rdi, [rbp + 144]
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
                                                                                        jmp   n555_match_alternate_s0
n565_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n564_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n566_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n555_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n555_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n563_match_assign_save_α
n566_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n555_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n567_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx592_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
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
                                                                                        jmp   n555_match_alternate_α
.Lx592_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx592_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
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
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx592_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n555_match_alternate_α
.Lx592_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n567_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        .global          proc_PAT$6_α
                        .global          proc_PAT$6_β
                        .global          proc_PAT$6_γ
                        .global          proc_PAT$6_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
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
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        .global          proc_PAT$7_α
                        .global          proc_PAT$7_β
                        .global          proc_PAT$7_γ
                        .global          proc_PAT$7_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n602_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n602_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n612_lit_integer_α
n602_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n602_match_sequence_β:
                                                                                        jmp   n604_match_rpos_β
n602_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n604_match_rpos_α
n603_lit_integer_β:
                                                                                        jmp   n605_match_arbno_β
.Lx616_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n604_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n605_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n604_match_rpos_β:
                                                                                        jmp   n605_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n605_match_arbno_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                        add              rsp, 48
                                                                                        jmp   n603_lit_integer_α
n605_match_arbno_β:
                        sub              rsp, 48
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
                                                                                        jmp   n606_match_sequence_α
n605_match_arbno_as:
                        sub              rsp, 48
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n606_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                        add              rsp, 48
                                                                                        jmp   n603_lit_integer_α
n605_match_arbno_af:
                        sub              rsp, 48
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
                                                                                        jmp   n606_match_sequence_β
.Lx619_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                        add              rsp, 48
                                                                                        jmp   n613_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n606_match_sequence_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n611_match_patref_α
n606_match_sequence_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n605_match_arbno_as
n606_match_sequence_β:
                        sub              rsp, 32
                                                                                        jmp   n609_match_assign_cond_β
n606_match_sequence_af:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n605_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n607_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n608_match_patref_α
n607_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n610_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n608_match_patref_α:
                        sub              rsp, 32
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
                        add              rsp, 32
                                                                                        jmp   n609_match_assign_cond_α
.Lx624_5:
                        add              rsp, 32
                                                                                        jmp   n607_match_assign_save_β
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
                                                                                        jns   .Lx624_240
                        add              rsp, 32
                                                                                        jmp   n607_match_assign_save_β
.Lx624_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx624_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 32
                                                                                        jmp   n609_match_assign_cond_α
.Lx624_6:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n607_match_assign_save_β
n608_match_patref_β:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n609_match_assign_cond_α:
                        lea              rdi, [rbp + 208]
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
                                                                                        jmp   n605_match_arbno_as
n609_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n608_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n610_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                                                                                        jne   .Lx627_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx627_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n607_match_assign_save_α
.Lx627_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n611_match_patref_β
.Lx627_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx627_2
.Lx627_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx627_2
.Lx627_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n611_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx627_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n607_match_assign_save_α
.Lx627_6:
                        add              rsp, 16
                                                                                        jmp   n611_match_patref_β
n610_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n611_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n611_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx628_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx628_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx628_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx628_10
.Lx628_9:
                        xor              eax, eax
.Lx628_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx628_11:
                        test             rax, rax
                                                                                        jz    .Lx628_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx628_4]
                        lea              rdx, [rip + .Lx628_5]
                                                                                        jmp   rax
.Lx628_4:
                                                                                        jmp   n610_match_patref_α
.Lx628_5:
                                                                                        jmp   n605_match_arbno_af
.Lx628_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx628_2
.Lx628_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx628_2
.Lx628_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n605_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx628_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n610_match_patref_α
.Lx628_6:
                        add              rsp, 16
                                                                                        jmp   n605_match_arbno_af
n611_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n613_match_pos_α
n612_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx629_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n613_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n605_match_arbno_α
n613_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
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
                                                                                        jmp   n632_call_α
n631_lit_integer_β:
                                                                                        jmp   n634_keyword_snobol4_α
.Lx915_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn917:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn917]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n634_keyword_snobol4_α
                                                                                        jmp   n633_assign_α
n632_call_β:
                                                                                        jmp   n634_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n633_assign_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n634_keyword_snobol4_α
n633_assign_β:
                                                                                        jmp   n634_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n634_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx919_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n635_assign_α
n634_keyword_snobol4_β:
                        add              rsp, 16
                                                                                        jmp   n636_lit_string_α
.Lx919_0:
                        .quad            .Lx919_0_s
.Lx919_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n635_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        add              rsp, 16
                                                                                        jmp   n636_lit_string_α
n635_assign_β:
                        add              rsp, 16
                                                                                        jmp   n636_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n637_assign_α
n636_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n638_lit_string_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n637_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        add              rsp, 16
                                                                                        jmp   n638_lit_string_α
n637_assign_β:
                        add              rsp, 16
                                                                                        jmp   n638_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              dword ptr [rbp + 2772], 5
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n639_call_α
n638_lit_string_β:
                                                                                        jmp   n641_lit_string_α
.Lx923_0:
                        .quad            .Lx923_0_s
.Lx923_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n639_call_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn925:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn925]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n641_lit_string_α
                                                                                        jmp   n640_assign_α
n639_call_β:
                                                                                        jmp   n641_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n640_assign_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n641_lit_string_α
n640_assign_β:
                                                                                        jmp   n641_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              dword ptr [rbp + 2836], 5
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n642_call_α
n641_lit_string_β:
                                                                                        jmp   n644_lit_string_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn929:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn929]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n644_lit_string_α
                                                                                        jmp   n643_assign_α
n642_call_β:
                                                                                        jmp   n644_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n644_lit_string_α
n643_assign_β:
                                                                                        jmp   n644_lit_string_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n644_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              dword ptr [rbp + 2900], 5
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n645_call_α
n644_lit_string_β:
                                                                                        jmp   n647_lit_string_α
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n645_call_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn933:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn933]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n647_lit_string_α
                                                                                        jmp   n646_assign_α
n645_call_β:
                                                                                        jmp   n647_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n646_assign_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n647_lit_string_α
n646_assign_β:
                                                                                        jmp   n647_lit_string_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              dword ptr [rbp + 2964], 5
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n648_call_α
n647_lit_string_β:
                                                                                        jmp   n650_lit_string_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n648_call_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn937:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn937]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n650_lit_string_α
                                                                                        jmp   n649_assign_α
n648_call_β:
                                                                                        jmp   n650_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n649_assign_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n650_lit_string_α
n649_assign_β:
                                                                                        jmp   n650_lit_string_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              dword ptr [rbp + 3028], 5
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n651_call_α
n650_lit_string_β:
                                                                                        jmp   n653_lit_string_α
.Lx939_0:
                        .quad            .Lx939_0_s
.Lx939_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n651_call_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn941:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn941]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n653_lit_string_α
                                                                                        jmp   n652_assign_α
n651_call_β:
                                                                                        jmp   n653_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n652_assign_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n653_lit_string_α
n652_assign_β:
                                                                                        jmp   n653_lit_string_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              dword ptr [rbp + 3092], 5
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n654_call_α
n653_lit_string_β:
                                                                                        jmp   n656_lit_string_α
.Lx943_0:
                        .quad            .Lx943_0_s
.Lx943_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n654_call_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn945:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn945]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n656_lit_string_α
                                                                                        jmp   n655_assign_α
n654_call_β:
                                                                                        jmp   n656_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n655_assign_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              rdx, qword ptr [rbp + 3048]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n656_lit_string_α
n655_assign_β:
                                                                                        jmp   n656_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              dword ptr [rbp + 3156], 5
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n657_call_α
n656_lit_string_β:
                                                                                        jmp   n659_lit_string_α
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lrkfn949:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn949]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n659_lit_string_α
                                                                                        jmp   n658_assign_α
n657_call_β:
                                                                                        jmp   n659_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n658_assign_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n659_lit_string_α
n658_assign_β:
                                                                                        jmp   n659_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              dword ptr [rbp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx951_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n660_call_α
n659_lit_string_β:
                                                                                        jmp   n662_lit_string_α
.Lx951_0:
                        .quad            .Lx951_0_s
.Lx951_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n660_call_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn953:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn953]
                        lea              rsi, [rbp + 3184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n662_lit_string_α
                                                                                        jmp   n661_assign_α
n660_call_β:
                                                                                        jmp   n662_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n661_assign_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n662_lit_string_α
n661_assign_β:
                                                                                        jmp   n662_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              dword ptr [rbp + 3300], 4
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n663_lit_integer_α
n662_lit_string_β:
                                                                                        jmp   n665_lit_integer_α
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n664_call_α
n663_lit_integer_β:
                                                                                        jmp   n665_lit_integer_α
.Lx956_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn958:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn958]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n665_lit_integer_α
                                                                                        jmp   n665_lit_integer_α
n664_call_β:
                                                                                        jmp   n665_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n666_call_α
n665_lit_integer_β:
                                                                                        jmp   n668_call_α
.Lx959_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n666_call_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        .section         .rodata
.Lbynamefn275:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn275]
                        lea              rsi, [rbp + 3344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n668_call_α
                                                                                        jmp   n667_assign_α
n666_call_β:
                                                                                        jmp   n668_call_α
#-----------------------------------------------------------------------------------------------------------------------
n667_assign_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n668_call_α
n667_assign_β:
                                                                                        jmp   n668_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n668_call_α:
                        .section         .rodata
.Lrkfn963:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn963]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n670_var_α
                                                                                        jmp   n669_assign_α
n668_call_β:
                                                                                        jmp   n670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n669_assign_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n670_var_α
n669_assign_β:
                                                                                        jmp   n670_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n670_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n671_lit_string_α
n670_var_β:
                        add              rsp, 16
                                                                                        jmp   n675_var_α
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n672_subscript_α
n671_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n675_var_α
.Lx966_0:
                        .quad            .Lx966_0_s
.Lx966_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n672_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx967_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n675_var_α
.Lx967_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n673_lit_integer_α
n672_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n675_var_α
#-----------------------------------------------------------------------------------------------------------------------
n673_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n674_assign_var_α
n673_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n675_var_α
.Lx968_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n674_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx969_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n675_var_α
.Lx969_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n675_var_α
n674_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n675_var_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n676_lit_string_α
n675_var_β:
                        add              rsp, 16
                                                                                        jmp   n680_var_α
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n677_subscript_α
n676_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n680_var_α
.Lx971_0:
                        .quad            .Lx971_0_s
.Lx971_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n677_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx972_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n680_var_α
.Lx972_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n678_lit_integer_α
n677_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n680_var_α
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n679_assign_var_α
n678_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n680_var_α
.Lx973_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n679_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx974_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n680_var_α
.Lx974_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n680_var_α
n679_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n680_var_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n681_lit_string_α
n680_var_β:
                        add              rsp, 16
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n682_subscript_α
n681_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n685_var_α
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n682_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx977_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n685_var_α
.Lx977_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n683_lit_integer_α
n682_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n684_assign_var_α
n683_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n685_var_α
.Lx978_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n684_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx979_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n685_var_α
.Lx979_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n685_var_α
n684_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n685_var_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx980_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx980_240
                        add              rsp, 16
                                                                                        jmp   n717_var_α
.Lx980_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n686_assign_α
n685_var_β:
                        add              rsp, 16
                                                                                        jmp   n717_var_α
.Lx980_0:
                        .quad            .Lx980_0_s
.Lx980_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n686_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        add              rsp, 16
                                                                                        jmp   n687_var_α
n686_assign_β:
                        add              rsp, 16
                                                                                        jmp   n717_var_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n687_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n688_var_α
n687_var_β:
                        add              rsp, 16
                                                                                        jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n688_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n689_binop_α
n688_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n689_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n690_var_α
n689_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n690_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n691_binop_α
n690_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n691_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n692_assign_α
n691_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n692_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 80
                                                                                        jmp   n693_var_α
n692_assign_β:
                        add              rsp, 80
                                                                                        jmp   n693_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n694_call_α
n693_var_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n694_call_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                        .section         .rodata
.Lrkfn990:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn990]
                        lea              rsi, [rbp + 3824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 99
                                                                                        je    n685_var_α
                                                                                        jmp   n695_lit_integer_α
n694_call_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n695_lit_integer_α:
                        mov              qword ptr [rbp + 3792], 6
                        mov              rax, qword ptr [rip + .Lx991_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n696_coerce_numeric_α
n695_lit_integer_β:
                                                                                        jmp   n685_var_α
.Lx991_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n696_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3808]
                        cmp              eax, 7
                                                                                        je    .Lx993_1
                        cmp              eax, 6
                                                                                        jne   .Lx993_0
                        mov              eax, dword ptr [rbp + 3792]
                        cmp              eax, 6
                                                                                        jne   .Lx993_0
.Lx993_1:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n697_coerce_numeric_α
.Lx993_0:
                        lea              rdi, [rbp + 3808]
                        lea              rsi, [rbp + 3792]
                        lea              rdx, [rbp + 3776]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n697_coerce_numeric_α
n696_coerce_numeric_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n697_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3792]
                        cmp              eax, 7
                                                                                        je    .Lx995_1
                        cmp              eax, 6
                                                                                        jne   .Lx995_0
                        mov              eax, dword ptr [rbp + 3808]
                        cmp              eax, 6
                                                                                        jne   .Lx995_0
.Lx995_1:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n698_cmp_test_α
.Lx995_0:
                        lea              rdi, [rbp + 3792]
                        lea              rsi, [rbp + 3808]
                        lea              rdx, [rbp + 3760]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n698_cmp_test_α
n697_coerce_numeric_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n698_cmp_test_α:
                        lea              rdi, [rbp + 3776]
                        lea              rsi, [rbp + 3760]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n685_var_α
                                                                                        jmp   n699_var_α
n698_cmp_test_β:
                                                                                        jmp   n685_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n699_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n700_var_α
n699_var_β:
                        add              rsp, 16
                                                                                        jmp   n703_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n700_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n701_binop_α
n700_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n703_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n701_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n702_assign_α
n701_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n703_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n702_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 48
                                                                                        jmp   n703_lit_string_α
n702_assign_β:
                        add              rsp, 48
                                                                                        jmp   n703_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n704_assign_α
n703_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n705_var_α
.Lx1002_0:
                        .quad            .Lx1002_0_s
.Lx1002_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 16
                                                                                        jmp   n705_var_α
n704_assign_β:
                        add              rsp, 16
                                                                                        jmp   n705_var_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n705_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n706_call_α
n705_var_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n706_call_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn1006:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1006]
                        lea              rsi, [rbp + 4000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n685_var_α
                                                                                        jmp   n707_lit_integer_α
n706_call_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx1007_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n708_coerce_numeric_α
n707_lit_integer_β:
                                                                                        jmp   n685_var_α
.Lx1007_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n708_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 7
                                                                                        je    .Lx1009_1
                        cmp              eax, 6
                                                                                        jne   .Lx1009_0
                        mov              eax, dword ptr [rbp + 3968]
                        cmp              eax, 6
                                                                                        jne   .Lx1009_0
.Lx1009_1:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n709_coerce_numeric_α
.Lx1009_0:
                        lea              rdi, [rbp + 3984]
                        lea              rsi, [rbp + 3968]
                        lea              rdx, [rbp + 3952]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n709_coerce_numeric_α
n708_coerce_numeric_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n709_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3968]
                        cmp              eax, 7
                                                                                        je    .Lx1011_1
                        cmp              eax, 6
                                                                                        jne   .Lx1011_0
                        mov              eax, dword ptr [rbp + 3984]
                        cmp              eax, 6
                                                                                        jne   .Lx1011_0
.Lx1011_1:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n710_cmp_test_α
.Lx1011_0:
                        lea              rdi, [rbp + 3968]
                        lea              rsi, [rbp + 3984]
                        lea              rdx, [rbp + 3936]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n710_cmp_test_α
n709_coerce_numeric_β:
                                                                                        jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n710_cmp_test_α:
                        lea              rdi, [rbp + 3952]
                        lea              rsi, [rbp + 3936]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n685_var_α
                                                                                        jmp   n711_var_α
n710_cmp_test_β:
                                                                                        jmp   n685_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n712_var_α
n711_var_β:
                        add              rsp, 16
                                                                                        jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n713_binop_α
n712_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n713_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n714_assign_α
n713_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n714_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 48
                                                                                        jmp   n715_lit_string_α
n714_assign_β:
                        add              rsp, 48
                                                                                        jmp   n715_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n716_assign_α
n715_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n685_var_α
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n716_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 16
                                                                                        jmp   n685_var_α
n716_assign_β:
                        add              rsp, 16
                                                                                        jmp   n685_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n717_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n718_var_α
n717_var_β:
                        add              rsp, 16
                                                                                        jmp   n723_call_α
#-----------------------------------------------------------------------------------------------------------------------
n718_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n719_binop_α
n718_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n723_call_α
#-----------------------------------------------------------------------------------------------------------------------
n719_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n720_var_α
n719_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n723_call_α
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n721_binop_α
n720_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n723_call_α
#-----------------------------------------------------------------------------------------------------------------------
n721_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n722_assign_α
n721_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n723_call_α
#-----------------------------------------------------------------------------------------------------------------------
n722_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 80
                                                                                        jmp   n723_call_α
n722_assign_β:
                        add              rsp, 80
                                                                                        jmp   n723_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n723_call_α:
                        .section         .rodata
.Lrkfn1027:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1027]
                        lea              rsi, [rbp + 4208]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n725_var_α
                                                                                        jmp   n724_assign_α
n723_call_β:
                                                                                        jmp   n725_var_α
#-----------------------------------------------------------------------------------------------------------------------
n724_assign_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              rdx, qword ptr [rbp + 4200]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n725_var_α
n724_assign_β:
                                                                                        jmp   n725_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n725_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n726_match_head_α
n725_var_β:
                                                                                        jmp   n737_call_α
#-----------------------------------------------------------------------------------------------------------------------
n726_match_head_α:
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
.Lx1031_0:
                        mov              r14d, dword ptr [rbp + 4240]
                                                                                        jmp   n727_match_patref_α
n726_match_head_β:
                        add              dword ptr [rbp + 4240], 1
                        mov              eax, dword ptr [rbp + 4240]
                        cmp              eax, r15d
                                                                                        jg    .Lx1031_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1031_1
                                                                                        jmp   .Lx1031_0
.Lx1031_1:
                        mov              rax, qword ptr [rbp + 4248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 4256]
                        mov              r10, qword ptr [1879048192]
.Lx1031_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1031_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 4288]
                        mov              r14, qword ptr [rbp + 4296]
                        mov              r15, qword ptr [rbp + 4304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 4312]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 4280]
                                                                                        jmp   n737_call_α
#-----------------------------------------------------------------------------------------------------------------------
n727_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1032_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                                                                                        jne   .Lx1032_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1032_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1032_10
.Lx1032_9:
                        xor              eax, eax
.Lx1032_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx1032_11:
                        test             rax, rax
                                                                                        jz    .Lx1032_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1032_4]
                        lea              rdx, [rip + .Lx1032_5]
                                                                                        jmp   rax
.Lx1032_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 4240], eax
                                                                                        jmp   n728_match_release_α
.Lx1032_5:
                                                                                        jmp   n726_match_head_β
.Lx1032_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1032_2:
                        test             rax, rax
                                                                                        je    .Lx1032_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1032_7]
                        lea              rdx, [rip + .Lx1032_8]
                                                                                        jmp   rax
.Lx1032_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1032_2
.Lx1032_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1032_2
.Lx1032_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n726_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1032_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n728_match_release_α
.Lx1032_6:
                        add              rsp, 16
                                                                                        jmp   n726_match_head_β
n727_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n728_match_release_α:
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
.Lx1034_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1034_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1034_1:
                        test             rax, rax
                                                                                        je    .Lx1034_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1034_3]
                        lea              rdx, [rip + .Lx1034_4]
                                                                                        jmp   rax
.Lx1034_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1034_1
.Lx1034_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1034_1
.Lx1034_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1034_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1034_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 4288]
                        mov              r14, qword ptr [rbp + 4296]
                        mov              r15, qword ptr [rbp + 4304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 4312]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 4280]
                                                                                        jmp   n729_call_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n729_call_α:
                        .section         .rodata
.Lrkfn1036:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1036]
                        lea              rsi, [rbp + 4368]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n731_lit_string_α
                                                                                        jmp   n730_assign_α
n729_call_β:
                                                                                        jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n730_assign_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              rdx, qword ptr [rbp + 4360]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n731_lit_string_α
n730_assign_β:
                                                                                        jmp   n731_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1038_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n732_var_α
n731_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n732_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n733_var_α
n732_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n734_binop_α
n733_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n734_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1041_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
.Lx1041_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n735_binop_α
n734_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n735_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n736_assign_α
n735_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n736_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1043_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n736_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1043_0:
                        .quad            .Lx1043_0_s
.Lx1043_0_s:
                        .string          "TERMINAL"
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n737_call_α:
                        .section         .rodata
.Lrkfn1045:             .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1045]
                        lea              rsi, [rbp + 4480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    n739_lit_string_α
                                                                                        jmp   n738_assign_α
n737_call_β:
                                                                                        jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n738_assign_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              rdx, qword ptr [rbp + 4472]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n739_lit_string_α
n738_assign_β:
                                                                                        jmp   n739_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1047_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n740_assign_α
n739_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n741_lit_string_α
.Lx1047_0:
                        .quad            .Lx1047_0_s
.Lx1047_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n740_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1048_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n741_lit_string_α
n740_assign_β:
                        add              rsp, 16
                                                                                        jmp   n741_lit_string_α
.Lx1048_0:
                        .quad            .Lx1048_0_s
.Lx1048_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n742_var_α
n741_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1049_0:
                        .quad            .Lx1049_0_s
.Lx1049_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n742_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n743_var_α
n742_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n743_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n744_binop_α
n743_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n744_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1052_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
.Lx1052_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n745_binop_α
n744_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n745_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n746_assign_α
n745_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n746_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1054_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n746_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n747_goto_α:
                                                                                        jmp   n748_var_α
n747_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n748_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n749_lit_integer_α
n748_var_β:
                                                                                        jmp   n754_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n750_subscript_α
n749_lit_integer_β:
                                                                                        jmp   n754_lit_integer_α
.Lx1057_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n750_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1058_240
                        add              rsp, 16
                                                                                        jmp   n754_lit_integer_α
.Lx1058_240:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        add              rsp, 16
                                                                                        jmp   n751_deref_α
n750_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n754_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n751_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1059_240
                        add              rsp, 16
                                                                                        jmp   n754_lit_integer_α
.Lx1059_240:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n752_call_α
n751_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n754_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n752_call_α:
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
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1061_21
.Lx1061_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n754_lit_integer_α
                                                                                        jmp   n753_assign_α
n752_call_β:
                                                                                        jmp   n754_lit_integer_α
.Lx1061_0:
                        .quad            .Lx1061_0_s
.Lx1061_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n753_assign_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx1062_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n754_lit_integer_α
n753_assign_β:
                                                                                        jmp   n754_lit_integer_α
.Lx1062_0:
                        .quad            .Lx1062_0_s
.Lx1062_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1063_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n755_assign_α
n754_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n756_lit_string_α
.Lx1063_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n755_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n756_lit_string_α
n755_assign_β:
                        add              rsp, 16
                                                                                        jmp   n756_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n757_call_α
n756_lit_string_β:
                                                                                        jmp   n759_lit_string_α
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n757_call_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1067:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1067]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n758_assign_α
n757_call_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n758_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n759_lit_string_α
n758_assign_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:
                        mov              qword ptr [rbp + 32], 1
                        mov              dword ptr [rbp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1069_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n760_call_α
n759_lit_string_β:
                                                                                        jmp   n762_save_restore_α
.Lx1069_0:
                        .quad            .Lx1069_0_s
.Lx1069_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n760_call_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn1071:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1071]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n762_save_restore_α
                                                                                        jmp   n761_save_restore_α
n760_call_β:
                                                                                        jmp   n762_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n761_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n762_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n763_goto_α:
                                                                                        jmp   n631_lit_integer_α
n763_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n764_goto_α:
                                                                                        jmp   n765_var_α
n764_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n765_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n766_lit_integer_α
n765_var_β:
                        add              rsp, 16
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n767_binop_α
n766_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n769_var_α
.Lx1079_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n767_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1080_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n769_var_α
.Lx1080_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n768_assign_α
n767_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n769_var_α
#-----------------------------------------------------------------------------------------------------------------------
n768_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n769_var_α
n768_assign_β:
                        add              rsp, 48
                                                                                        jmp   n769_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n769_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n770_var_α
n769_var_β:
                        add              rsp, 16
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n771_subscript_α
n770_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n771_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1084_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n759_lit_string_α
.Lx1084_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n772_assign_α
n771_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n772_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n759_lit_string_α
n772_assign_β:
                        add              rsp, 48
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n773_goto_α:
                                                                                        jmp   n631_lit_integer_α
n773_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n774_goto_α:
                                                                                        jmp   n775_var_α
n774_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n775_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n776_match_head_α
n775_var_β:
                                                                                        jmp   n789_var_α
#-----------------------------------------------------------------------------------------------------------------------
n776_match_head_α:
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
.Lx1090_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n777_match_sequence_α
n776_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1090_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1090_1
                                                                                        jmp   .Lx1090_0
.Lx1090_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx1090_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1090_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n789_var_α
#-----------------------------------------------------------------------------------------------------------------------
n777_match_sequence_α:
                                                                                        jmp   n787_lit_integer_α
n777_match_sequence_as:
                                                                                        jmp   n778_match_release_α
n777_match_sequence_β:
                                                                                        jmp   n785_match_rpos_β
n777_match_sequence_af:
                                                                                        jmp   n776_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n778_match_release_α:
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
.Lx1094_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1094_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1094_1:
                        test             rax, rax
                                                                                        je    .Lx1094_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1094_3]
                        lea              rdx, [rip + .Lx1094_4]
                                                                                        jmp   rax
.Lx1094_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1094_1
.Lx1094_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1094_1
.Lx1094_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1094_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1094_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n779_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n779_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n780_var_α
n779_var_β:
                        add              rsp, 16
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n781_subscript_α
n780_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n781_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1097_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n761_save_restore_α
.Lx1097_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n782_deref_α
n781_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n782_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1098_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n761_save_restore_α
.Lx1098_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n783_assign_α
n782_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n783_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 64
                                                                                        jmp   n761_save_restore_α
n783_assign_β:
                        add              rsp, 64
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n785_match_rpos_α
n784_lit_integer_β:
                                                                                        jmp   n786_match_any_β
.Lx1100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n785_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n786_match_any_β
                                                                                        jmp   n778_match_release_α
n785_match_rpos_β:
                                                                                        jmp   n786_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n786_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n776_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n776_match_head_β
                        add              r14d, 1
                                                                                        jmp   n784_lit_integer_α
n786_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n776_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n788_match_pos_α
n787_lit_integer_β:
                                                                                        jmp   n776_match_head_β
.Lx1104_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n788_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n776_match_head_β
                                                                                        jmp   n786_match_any_α
n788_match_pos_β:
                                                                                        jmp   n776_match_head_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n790_assign_α
n789_var_β:
                        add              rsp, 16
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n790_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n761_save_restore_α
n790_assign_β:
                        add              rsp, 16
                                                                                        jmp   n761_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n791_goto_α:
                                                                                        jmp   n789_var_α
n791_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n792_goto_α:
                                                                                        jmp   n631_lit_integer_α
n792_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n793_goto_α:
                                                                                        jmp   n794_var_α
n793_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n794_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n795_var_α
n794_var_β:
                                                                                        jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n796_subscript_α
n795_var_β:
                                                                                        jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n796_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1113_240
                        add              rsp, 16
                                                                                        jmp   n800_var_α
.Lx1113_240:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        add              rsp, 16
                                                                                        jmp   n797_deref_α
n796_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n797_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1114_240
                        add              rsp, 16
                                                                                        jmp   n800_var_α
.Lx1114_240:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        add              rsp, 16
                                                                                        jmp   n798_call_α
n797_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n798_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1116_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1116_5
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1116_6]
                        lea              rdx, [rip + .Lx1116_7]
                                                                                        jmp   rax
.Lx1116_6:
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
                                                                                        jmp   .Lx1116_2
.Lx1116_7:
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
                                                                                        jmp   .Lx1116_2
.Lx1116_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1116_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1116_21
.Lx1116_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx1116_21:
                        mov              rdi, qword ptr [rip + .Lx1116_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1116_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1116_3]
                        lea              rdx, [rip + .Lx1116_4]
                                                                                        jmp   rax
.Lx1116_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1116_2
.Lx1116_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1116_2
.Lx1116_1:
                        call             rt_faildescr@PLT
.Lx1116_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n800_var_α
                                                                                        jmp   n799_assign_α
n798_call_β:
                                                                                        jmp   n800_var_α
.Lx1116_0:
                        .quad            .Lx1116_0_s
.Lx1116_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n799_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n800_var_α
n799_assign_β:
                                                                                        jmp   n800_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n800_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n801_lit_integer_α
n800_var_β:
                        add              rsp, 16
                                                                                        jmp   n804_var_α
#-----------------------------------------------------------------------------------------------------------------------
n801_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n802_binop_α
n801_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n804_var_α
.Lx1119_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n802_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1120_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n804_var_α
.Lx1120_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n803_assign_α
n802_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n804_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n804_var_α
n803_assign_β:
                        add              rsp, 48
                                                                                        jmp   n804_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n804_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n805_var_α
n804_var_β:
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n806_subscript_α
n805_var_β:
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n806_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1124_240
                        add              rsp, 16
                                                                                        jmp   n815_lit_string_α
.Lx1124_240:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        add              rsp, 16
                                                                                        jmp   n807_var_α
n806_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n808_var_α
n807_var_β:
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n808_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n809_subscript_α
n808_var_β:
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n809_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1127_240
                        add              rsp, 16
                                                                                        jmp   n815_lit_string_α
.Lx1127_240:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n810_deref_α
n809_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n810_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1128_240
                        add              rsp, 16
                                                                                        jmp   n815_lit_string_α
.Lx1128_240:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n811_call_α
n810_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n811_call_α:
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
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 968]
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
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1130_21
.Lx1130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n815_lit_string_α
                                                                                        jmp   n812_var_α
n811_call_β:
                                                                                        jmp   n815_lit_string_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n813_binop_α
n812_var_β:
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n813_binop_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx1132_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx1132_0
                        mov              rax, qword ptr [rbp + 872]
                        mov              rcx, qword ptr [rbp + 984]
                        add              rax, rcx
                        mov              qword ptr [rbp + 848], 6
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n814_assign_var_α
.Lx1132_0:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n815_lit_string_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n814_assign_var_α
n813_binop_β:
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n814_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n815_lit_string_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n815_lit_string_α
n814_assign_var_β:
                                                                                        jmp   n815_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx1134_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n816_call_α
n815_lit_string_β:
                                                                                        jmp   n759_lit_string_α
.Lx1134_0:
                        .quad            .Lx1134_0_s
.Lx1134_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n816_call_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn1136:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1136]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n817_assign_α
n816_call_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n759_lit_string_α
n817_assign_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n818_goto_α:
                                                                                        jmp   n631_lit_integer_α
n818_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n819_goto_α:
                                                                                        jmp   n820_var_α
n819_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n820_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n821_var_α
n820_var_β:
                                                                                        jmp   n826_var_α
#-----------------------------------------------------------------------------------------------------------------------
n821_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n822_subscript_α
n821_var_β:
                                                                                        jmp   n826_var_α
#-----------------------------------------------------------------------------------------------------------------------
n822_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1142_240
                        add              rsp, 16
                                                                                        jmp   n826_var_α
.Lx1142_240:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n823_deref_α
n822_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n826_var_α
#-----------------------------------------------------------------------------------------------------------------------
n823_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1143_240
                        add              rsp, 16
                                                                                        jmp   n826_var_α
.Lx1143_240:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n824_call_α
n823_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n826_var_α
#-----------------------------------------------------------------------------------------------------------------------
n824_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1145_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1145_5
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1145_6]
                        lea              rdx, [rip + .Lx1145_7]
                                                                                        jmp   rax
.Lx1145_6:
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
                                                                                        jmp   .Lx1145_2
.Lx1145_7:
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
                                                                                        jmp   .Lx1145_2
.Lx1145_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1145_20
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1145_21
.Lx1145_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx1145_21:
                        mov              rdi, qword ptr [rip + .Lx1145_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1145_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1145_3]
                        lea              rdx, [rip + .Lx1145_4]
                                                                                        jmp   rax
.Lx1145_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1145_2
.Lx1145_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1145_2
.Lx1145_1:
                        call             rt_faildescr@PLT
.Lx1145_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n826_var_α
                                                                                        jmp   n825_assign_α
n824_call_β:
                                                                                        jmp   n826_var_α
.Lx1145_0:
                        .quad            .Lx1145_0_s
.Lx1145_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n825_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n826_var_α
n825_assign_β:
                                                                                        jmp   n826_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n826_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n827_lit_integer_α
n826_var_β:
                        add              rsp, 16
                                                                                        jmp   n830_var_α
#-----------------------------------------------------------------------------------------------------------------------
n827_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n828_binop_α
n827_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n830_var_α
.Lx1148_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n828_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1149_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n830_var_α
.Lx1149_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n829_assign_α
n828_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n830_var_α
#-----------------------------------------------------------------------------------------------------------------------
n829_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n830_var_α
n829_assign_β:
                        add              rsp, 48
                                                                                        jmp   n830_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n830_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n831_var_α
n830_var_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n832_subscript_α
n831_var_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1153_240
                        add              rsp, 16
                                                                                        jmp   n841_lit_string_α
.Lx1153_240:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        add              rsp, 16
                                                                                        jmp   n833_var_α
n832_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n833_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n834_var_α
n833_var_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n835_subscript_α
n834_var_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n835_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1156_240
                        add              rsp, 16
                                                                                        jmp   n841_lit_string_α
.Lx1156_240:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        add              rsp, 16
                                                                                        jmp   n836_deref_α
n835_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n836_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1157_240
                        add              rsp, 16
                                                                                        jmp   n841_lit_string_α
.Lx1157_240:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        add              rsp, 16
                                                                                        jmp   n837_call_α
n836_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n841_lit_string_α
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
                        mov              rdi, qword ptr [rip + .Lx1159_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1159_5
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1159_6]
                        lea              rdx, [rip + .Lx1159_7]
                                                                                        jmp   rax
.Lx1159_6:
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
                                                                                        jmp   .Lx1159_2
.Lx1159_7:
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
                                                                                        jmp   .Lx1159_2
.Lx1159_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1159_20
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1159_21
.Lx1159_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx1159_21:
                        mov              rdi, qword ptr [rip + .Lx1159_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1159_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1159_3]
                        lea              rdx, [rip + .Lx1159_4]
                                                                                        jmp   rax
.Lx1159_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1159_2
.Lx1159_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1159_2
.Lx1159_1:
                        call             rt_faildescr@PLT
.Lx1159_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n841_lit_string_α
                                                                                        jmp   n838_var_α
n837_call_β:
                                                                                        jmp   n841_lit_string_α
.Lx1159_0:
                        .quad            .Lx1159_0_s
.Lx1159_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n839_binop_α
n838_var_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx1161_0
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 6
                                                                                        jne   .Lx1161_0
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, qword ptr [rbp + 1416]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n840_assign_var_α
.Lx1161_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n841_lit_string_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n840_assign_var_α
n839_binop_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n840_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n841_lit_string_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n841_lit_string_α
n840_assign_var_β:
                                                                                        jmp   n841_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              dword ptr [rbp + 1492], 2
                        mov              rax, qword ptr [rip + .Lx1163_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n842_call_α
n841_lit_string_β:
                                                                                        jmp   n759_lit_string_α
.Lx1163_0:
                        .quad            .Lx1163_0_s
.Lx1163_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n842_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn1165:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1165]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n843_assign_α
n842_call_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n843_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n759_lit_string_α
n843_assign_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_goto_α:
                                                                                        jmp   n631_lit_integer_α
n844_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n845_goto_α:
                                                                                        jmp   n846_var_α
n845_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n846_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n847_var_α
n846_var_β:
                                                                                        jmp   n852_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n848_subscript_α
n847_var_β:
                                                                                        jmp   n852_var_α
#-----------------------------------------------------------------------------------------------------------------------
n848_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1171_240
                        add              rsp, 16
                                                                                        jmp   n852_var_α
.Lx1171_240:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        add              rsp, 16
                                                                                        jmp   n849_deref_α
n848_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n852_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1172_240
                        add              rsp, 16
                                                                                        jmp   n852_var_α
.Lx1172_240:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n850_call_α
n849_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n852_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1174_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1174_5
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1174_6]
                        lea              rdx, [rip + .Lx1174_7]
                                                                                        jmp   rax
.Lx1174_6:
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
                                                                                        jmp   .Lx1174_2
.Lx1174_7:
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
                                                                                        jmp   .Lx1174_2
.Lx1174_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1174_20
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1174_21
.Lx1174_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx1174_21:
                        mov              rdi, qword ptr [rip + .Lx1174_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1174_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1174_3]
                        lea              rdx, [rip + .Lx1174_4]
                                                                                        jmp   rax
.Lx1174_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1174_2
.Lx1174_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1174_2
.Lx1174_1:
                        call             rt_faildescr@PLT
.Lx1174_2:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n852_var_α
                                                                                        jmp   n851_assign_α
n850_call_β:
                                                                                        jmp   n852_var_α
.Lx1174_0:
                        .quad            .Lx1174_0_s
.Lx1174_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n851_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n852_var_α
n851_assign_β:
                                                                                        jmp   n852_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n852_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n853_lit_integer_α
n852_var_β:
                        add              rsp, 16
                                                                                        jmp   n856_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n854_binop_α
n853_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n856_var_α
.Lx1177_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n854_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1178_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n856_var_α
.Lx1178_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n855_assign_α
n854_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n856_var_α
#-----------------------------------------------------------------------------------------------------------------------
n855_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n856_var_α
n855_assign_β:
                        add              rsp, 48
                                                                                        jmp   n856_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n856_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n857_var_α
n856_var_β:
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n857_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n858_subscript_α
n857_var_β:
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n858_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1182_240
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
.Lx1182_240:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        add              rsp, 16
                                                                                        jmp   n859_var_α
n858_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n859_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n860_var_α
n859_var_β:
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n861_subscript_α
n860_var_β:
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n861_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1185_240
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
.Lx1185_240:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        add              rsp, 16
                                                                                        jmp   n862_deref_α
n861_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n862_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1186_240
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
.Lx1186_240:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        add              rsp, 16
                                                                                        jmp   n863_call_α
n862_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n863_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1188_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1188_5
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1188_6]
                        lea              rdx, [rip + .Lx1188_7]
                                                                                        jmp   rax
.Lx1188_6:
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
                                                                                        jmp   .Lx1188_2
.Lx1188_7:
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
                                                                                        jmp   .Lx1188_2
.Lx1188_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1188_20
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1188_21
.Lx1188_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx1188_21:
                        mov              rdi, qword ptr [rip + .Lx1188_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1188_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1188_3]
                        lea              rdx, [rip + .Lx1188_4]
                                                                                        jmp   rax
.Lx1188_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1188_2
.Lx1188_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1188_2
.Lx1188_1:
                        call             rt_faildescr@PLT
.Lx1188_2:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n867_lit_string_α
                                                                                        jmp   n864_var_α
n863_call_β:
                                                                                        jmp   n867_lit_string_α
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n865_binop_α
n864_var_β:
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n865_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx1190_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx1190_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, qword ptr [rbp + 1848]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n866_assign_var_α
.Lx1190_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n867_lit_string_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n866_assign_var_α
n865_binop_β:
                                                                                        jmp   n867_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n866_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n867_lit_string_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n867_lit_string_α
n866_assign_var_β:
                                                                                        jmp   n867_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n867_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              dword ptr [rbp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx1192_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n868_call_α
n867_lit_string_β:
                                                                                        jmp   n759_lit_string_α
.Lx1192_0:
                        .quad            .Lx1192_0_s
.Lx1192_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n868_call_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn1194:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1194]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n869_assign_α
n868_call_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n869_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n759_lit_string_α
n869_assign_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_goto_α:
                                                                                        jmp   n631_lit_integer_α
n870_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n871_goto_α:
                                                                                        jmp   n872_var_α
n871_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n872_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n873_var_α
n872_var_β:
                                                                                        jmp   n878_var_α
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n874_subscript_α
n873_var_β:
                                                                                        jmp   n878_var_α
#-----------------------------------------------------------------------------------------------------------------------
n874_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1200_240
                        add              rsp, 16
                                                                                        jmp   n878_var_α
.Lx1200_240:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        add              rsp, 16
                                                                                        jmp   n875_deref_α
n874_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n878_var_α
#-----------------------------------------------------------------------------------------------------------------------
n875_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1201_240
                        add              rsp, 16
                                                                                        jmp   n878_var_α
.Lx1201_240:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        add              rsp, 16
                                                                                        jmp   n876_call_α
n875_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n878_var_α
#-----------------------------------------------------------------------------------------------------------------------
n876_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1203_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1203_5
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1203_6]
                        lea              rdx, [rip + .Lx1203_7]
                                                                                        jmp   rax
.Lx1203_6:
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
                                                                                        jmp   .Lx1203_2
.Lx1203_7:
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
                                                                                        jmp   .Lx1203_2
.Lx1203_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1203_20
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1203_21
.Lx1203_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        call             rt_arg_stage@PLT
.Lx1203_21:
                        mov              rdi, qword ptr [rip + .Lx1203_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1203_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1203_3]
                        lea              rdx, [rip + .Lx1203_4]
                                                                                        jmp   rax
.Lx1203_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1203_2
.Lx1203_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1203_2
.Lx1203_1:
                        call             rt_faildescr@PLT
.Lx1203_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n878_var_α
                                                                                        jmp   n877_assign_α
n876_call_β:
                                                                                        jmp   n878_var_α
.Lx1203_0:
                        .quad            .Lx1203_0_s
.Lx1203_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n877_assign_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n878_var_α
n877_assign_β:
                                                                                        jmp   n878_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n878_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n879_lit_integer_α
n878_var_β:
                        add              rsp, 16
                                                                                        jmp   n882_var_α
#-----------------------------------------------------------------------------------------------------------------------
n879_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n880_binop_α
n879_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n882_var_α
.Lx1206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n880_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1207_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n882_var_α
.Lx1207_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n881_assign_α
n880_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n882_var_α
#-----------------------------------------------------------------------------------------------------------------------
n881_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n882_var_α
n881_assign_β:
                        add              rsp, 48
                                                                                        jmp   n882_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n883_var_α
n882_var_β:
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n884_subscript_α
n883_var_β:
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n884_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1211_240
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_α
.Lx1211_240:
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        add              rsp, 16
                                                                                        jmp   n885_var_α
n884_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n886_var_α
n885_var_β:
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n887_subscript_α
n886_var_β:
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n887_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1214_240
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_α
.Lx1214_240:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        add              rsp, 16
                                                                                        jmp   n888_deref_α
n887_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1215_240
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_α
.Lx1215_240:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        add              rsp, 16
                                                                                        jmp   n889_call_α
n888_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n889_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1217_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1217_5
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1217_6]
                        lea              rdx, [rip + .Lx1217_7]
                                                                                        jmp   rax
.Lx1217_6:
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
                                                                                        jmp   .Lx1217_2
.Lx1217_7:
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
                                                                                        jmp   .Lx1217_2
.Lx1217_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1217_20
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1217_21
.Lx1217_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx1217_21:
                        mov              rdi, qword ptr [rip + .Lx1217_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1217_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1217_3]
                        lea              rdx, [rip + .Lx1217_4]
                                                                                        jmp   rax
.Lx1217_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1217_2
.Lx1217_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1217_2
.Lx1217_1:
                        call             rt_faildescr@PLT
.Lx1217_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n893_lit_string_α
                                                                                        jmp   n890_var_α
n889_call_β:
                                                                                        jmp   n893_lit_string_α
.Lx1217_0:
                        .quad            .Lx1217_0_s
.Lx1217_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n890_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n891_binop_α
n890_var_β:
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n891_binop_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n893_lit_string_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n892_assign_var_α
n891_binop_β:
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n893_lit_string_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n893_lit_string_α
n892_assign_var_β:
                                                                                        jmp   n893_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Lx1221_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n894_call_α
n893_lit_string_β:
                                                                                        jmp   n759_lit_string_α
.Lx1221_0:
                        .quad            .Lx1221_0_s
.Lx1221_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n894_call_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn1223:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1223]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n895_assign_α
n894_call_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n895_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n759_lit_string_α
n895_assign_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n896_goto_α:
                                                                                        jmp   n631_lit_integer_α
n896_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n897_goto_α:
                                                                                        jmp   n898_var_α
n897_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n898_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n899_var_α
n898_var_β:
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n900_subscript_α
n899_var_β:
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n900_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1229_240
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
.Lx1229_240:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        add              rsp, 16
                                                                                        jmp   n901_var_α
n900_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n901_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n902_var_α
n901_var_β:
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n903_subscript_α
n902_var_β:
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n903_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2496]
                        mov              rcx, qword ptr [rbp + 2504]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1232_240
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
.Lx1232_240:
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        add              rsp, 16
                                                                                        jmp   n904_deref_α
n903_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1233_240
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
.Lx1233_240:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        add              rsp, 16
                                                                                        jmp   n905_call_α
n904_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n905_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1235_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1235_5
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1235_6]
                        lea              rdx, [rip + .Lx1235_7]
                                                                                        jmp   rax
.Lx1235_6:
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
                                                                                        jmp   .Lx1235_2
.Lx1235_7:
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
                                                                                        jmp   .Lx1235_2
.Lx1235_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1235_20
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1235_21
.Lx1235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             rt_arg_stage@PLT
.Lx1235_21:
                        mov              rdi, qword ptr [rip + .Lx1235_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1235_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1235_3]
                        lea              rdx, [rip + .Lx1235_4]
                                                                                        jmp   rax
.Lx1235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1235_2
.Lx1235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1235_2
.Lx1235_1:
                        call             rt_faildescr@PLT
.Lx1235_2:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n908_lit_string_α
                                                                                        jmp   n906_unop_α
n905_call_β:
                                                                                        jmp   n908_lit_string_α
.Lx1235_0:
                        .quad            .Lx1235_0_s
.Lx1235_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n906_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        add              rsp, 16
                                                                                        jmp   n907_assign_var_α
n906_unop_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n908_lit_string_α
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n908_lit_string_α
n907_assign_var_β:
                                                                                        jmp   n908_lit_string_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n908_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              dword ptr [rbp + 2612], 2
                        mov              rax, qword ptr [rip + .Lx1238_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n909_call_α
n908_lit_string_β:
                                                                                        jmp   n759_lit_string_α
.Lx1238_0:
                        .quad            .Lx1238_0_s
.Lx1238_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n909_call_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn1240:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1240]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n759_lit_string_α
                                                                                        jmp   n910_assign_α
n909_call_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_assign_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n759_lit_string_α
n910_assign_β:
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n911_goto_α:
                                                                                        jmp   n631_lit_integer_α
n911_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n912_goto_α:
                                                                                        jmp   n685_var_α
n912_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n913_goto_α:
                                                                                        jmp   n717_var_α
n913_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n914_goto_α:
                                                                                        jmp   n737_call_α
n914_goto_β:
                                                                                        jmp   main_ω
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
