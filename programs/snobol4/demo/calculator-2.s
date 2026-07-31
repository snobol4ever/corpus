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
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n3_subscript_α
.Lx18_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx19_240
                        add              rsp, 16
                                                                                        jmp   n7_lit_integer_α
.Lx19_240:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n4_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx20_240
                        add              rsp, 16
                                                                                        jmp   n7_lit_integer_α
.Lx20_240:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
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
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 248]
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
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx22_21
.Lx22_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
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
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
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
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
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
                        mov              qword ptr [rsp + 288], 1
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n10_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn28:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n11_assign_α
n10_call_β:
                                                                                        jmp   n12_lit_string_α
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
                        mov              dword ptr [rsp + 36], 0
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
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n44_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx57_240
                        add              rsp, 16
                                                                                        jmp   n46_lit_string_α
.Lx57_240:
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        add              rsp, 16
                                                                                        jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n47_call_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn61:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
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
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
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
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n72_var_α
n71_var_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n73_subscript_α
n72_var_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx94_240
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
.Lx94_240:
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        add              rsp, 16
                                                                                        jmp   n74_deref_α
n73_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
.Lx95_240:
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n75_assign_α
n74_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n83_save_restore_α
n75_assign_β:
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 568], rax
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
                        mov              qword ptr [rsp + 544], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 552], rax
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
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n110_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n110_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                                                                                        jmp   n114_var_α
.Lx139_240:
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        add              rsp, 16
                                                                                        jmp   n111_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx140_240
                        add              rsp, 16
                                                                                        jmp   n114_var_α
.Lx140_240:
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
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
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 776]
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
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx142_21
.Lx142_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
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
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
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
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
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
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n120_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx150_240
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
.Lx150_240:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        add              rsp, 16
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n123_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
.Lx153_240:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n124_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx154_240
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
.Lx154_240:
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
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
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1000]
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
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx156_21
.Lx156_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
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
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
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
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n127_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx158_0
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx158_0
                        mov              rax, qword ptr [rsp + 872]
                        mov              rcx, qword ptr [rsp + 984]
                        add              rax, rcx
                        mov              qword ptr [rsp + 848], 6
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n128_assign_var_α
.Lx158_0:
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n128_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n129_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 1056], 1
                        mov              dword ptr [rsp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 1064], rax
                                                                                        jmp   n130_call_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn162:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n132_lit_string_α
                                                                                        jmp   n131_assign_α
n130_call_β:
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n133_call_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn166:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
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
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n174_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n174_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx203_240
                        add              rsp, 16
                                                                                        jmp   n178_var_α
.Lx203_240:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n175_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx204_240
                        add              rsp, 16
                                                                                        jmp   n178_var_α
.Lx204_240:
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
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
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1208]
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
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx206_21
.Lx206_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
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
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
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
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
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
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                                                                                        jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                                                                                        jmp   n184_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx214_240:
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        add              rsp, 16
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n187_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n187_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx217_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx217_240:
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        add              rsp, 16
                                                                                        jmp   n188_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx218_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx218_240:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
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
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1432]
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
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx220_21
.Lx220_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
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
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
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
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                                                                                        jmp   n191_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
                        mov              eax, dword ptr [rsp + 1408]
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
                        mov              rax, qword ptr [rsp + 1304]
                        mov              rcx, qword ptr [rsp + 1416]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 1280], 6
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n192_assign_var_α
.Lx222_0:
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n193_lit_string_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                                                                                        jmp   n192_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n193_lit_string_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                                                                                        jmp   n193_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rsp + 1488], 1
                        mov              dword ptr [rsp + 1492], 2
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 1496], rax
                                                                                        jmp   n194_call_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn226:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n195_assign_α
n194_call_β:
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n197_call_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn230:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
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
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n238_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n238_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx267_240
                        add              rsp, 16
                                                                                        jmp   n242_var_α
.Lx267_240:
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n239_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx268_240
                        add              rsp, 16
                                                                                        jmp   n242_var_α
.Lx268_240:
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
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
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1640]
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
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx270_21
.Lx270_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
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
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
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
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
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
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                                                                                        jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                                                                                        jmp   n248_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n248_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx278_240
                        add              rsp, 16
                                                                                        jmp   n257_lit_string_α
.Lx278_240:
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        add              rsp, 16
                                                                                        jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                                                                                        jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                                                                                        jmp   n251_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n251_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx281_240
                        add              rsp, 16
                                                                                        jmp   n257_lit_string_α
.Lx281_240:
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        add              rsp, 16
                                                                                        jmp   n252_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx282_240
                        add              rsp, 16
                                                                                        jmp   n257_lit_string_α
.Lx282_240:
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
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
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1864]
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
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx284_21
.Lx284_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
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
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
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
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                                                                                        jmp   n255_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:
                        mov              eax, dword ptr [rsp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx286_0
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx286_0
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rcx, qword ptr [rsp + 1848]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 1712], 6
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n256_assign_var_α
.Lx286_0:
                        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              rcx, qword ptr [rsp + 1848]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n257_lit_string_α
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                                                                                        jmp   n256_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n257_lit_string_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                                                                                        jmp   n257_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rsp + 1920], 1
                        mov              dword ptr [rsp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 1928], rax
                                                                                        jmp   n258_call_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn290:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n260_lit_string_α
                                                                                        jmp   n259_assign_α
n258_call_β:
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n261_call_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn294:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
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
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                                                                                        jmp   n302_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n302_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx331_240
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx331_240:
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        add              rsp, 16
                                                                                        jmp   n303_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx332_240
                        add              rsp, 16
                                                                                        jmp   n306_var_α
.Lx332_240:
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
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
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2072]
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
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx334_21
.Lx334_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
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
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
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
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
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
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                                                                                        jmp   n312_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n312_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2112]
                        mov              rsi, qword ptr [rsp + 2120]
                        mov              rdx, qword ptr [rsp + 2128]
                        mov              rcx, qword ptr [rsp + 2136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_α
.Lx342_240:
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        add              rsp, 16
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n315_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx345_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_α
.Lx345_240:
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        add              rsp, 16
                                                                                        jmp   n316_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx346_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_α
.Lx346_240:
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
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
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2296]
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
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx348_21
.Lx348_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
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
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
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
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                                                                                        jmp   n319_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2272]
                        mov              rcx, qword ptr [rsp + 2280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n321_lit_string_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                                                                                        jmp   n320_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2144]
                        mov              rcx, qword ptr [rsp + 2152]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n321_lit_string_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                                                                                        jmp   n321_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rsp + 2352], 1
                        mov              dword ptr [rsp + 2356], 2
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 2360], rax
                                                                                        jmp   n322_call_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2328], rax
                        .section         .rodata
.Lrkfn354:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rsp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n324_lit_string_α
                                                                                        jmp   n323_assign_α
n322_call_β:
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n325_call_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn358:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
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
                        .globl           proc_LBL__SGN_α
proc_LBL__SGN_α:
                        .global          proc_LBL__SGN_α
                        .global          proc_LBL__SGN_β
                        .global          proc_LBL__SGN_γ
                        .global          proc_LBL__SGN_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                                                                                        jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                                                                                        jmp   n366_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n366_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, qword ptr [rsp + 2448]
                        mov              rcx, qword ptr [rsp + 2456]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx398_240
                        add              rsp, 16
                                                                                        jmp   n370_var_α
.Lx398_240:
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        add              rsp, 16
                                                                                        jmp   n367_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2464]
                        mov              rsi, qword ptr [rsp + 2472]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx399_240
                        add              rsp, 16
                                                                                        jmp   n370_var_α
.Lx399_240:
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        add              rsp, 16
                                                                                        jmp   n368_call_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:
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
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2504]
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
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx401_21
.Lx401_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
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
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n370_var_α
                                                                                        jmp   n369_assign_α
n368_call_β:
                                                                                        jmp   n370_var_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n370_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n371_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n372_binop_α
.Lx404_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n372_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx405_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx405_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n373_assign_α
.Lx405_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx405_240
                        add              rsp, 32
                                                                                        jmp   n374_var_α
.Lx405_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n373_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n374_var_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                                                                                        jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                                                                                        jmp   n376_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n376_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2608]
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              rdx, qword ptr [rsp + 2624]
                        mov              rcx, qword ptr [rsp + 2632]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx409_240
                        add              rsp, 16
                                                                                        jmp   n383_var_α
.Lx409_240:
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        add              rsp, 16
                                                                                        jmp   n377_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n377_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2640]
                        mov              rsi, qword ptr [rsp + 2648]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx410_240
                        add              rsp, 16
                                                                                        jmp   n383_var_α
.Lx410_240:
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        add              rsp, 16
                                                                                        jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rsp + 2656], 1
                        mov              dword ptr [rsp + 2660], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 2664], rax
                                                                                        jmp   n379_call_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn413:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn413]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n383_var_α
                                                                                        jmp   n380_var_α
n379_call_β:
                                                                                        jmp   n383_var_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n381_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n381_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        add              rsp, 16
                                                                                        jmp   n382_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n383_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                                                                                        jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                                                                                        jmp   n385_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              rdx, qword ptr [rsp + 2736]
                        mov              rcx, qword ptr [rsp + 2744]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx419_240
                        add              rsp, 16
                                                                                        jmp   n388_lit_string_α
.Lx419_240:
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        add              rsp, 16
                                                                                        jmp   n386_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                                                                                        jmp   n387_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2736]
                        mov              rsi, qword ptr [rsp + 2744]
                        mov              rdx, qword ptr [rsp + 2752]
                        mov              rcx, qword ptr [rsp + 2760]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n388_lit_string_α
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                                                                                        jmp   n388_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rsp + 2832], 1
                        mov              dword ptr [rsp + 2836], 2
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 2840], rax
                                                                                        jmp   n389_call_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn424:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n391_lit_string_α
                                                                                        jmp   n390_assign_α
n389_call_β:
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:
                        mov              rax, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n392_call_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn428:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n394_save_restore_α
                                                                                        jmp   n393_save_restore_α
n392_call_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_ω:
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
n433_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
n439_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
n445_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
n451_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
n457_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
n463_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
n469_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SGN_α
proc_SGN_α:
                        .global          proc_SGN_α
                        .global          proc_SGN_β
                        .global          proc_SGN_γ
                        .global          proc_SGN_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_SGN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n475_save_restore_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
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
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_ω:
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
                        lea              rax, [rip + n483_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
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
n483_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n482_match_any_β
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
                        lea              rax, [rip + n492_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
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
n492_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n491_match_span_β
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
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n499_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx507_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n505_match_patref_α
.Lx507_21:
                        lea              rax, [rip + .Lx507_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n504_match_patref_α
.Lx507_22:
                        lea              rax, [rip + .Lx507_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n500_match_sequence_α
n499_match_alternate_s0:
                        lea              rax, [rip + .Lx507_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n499_match_alternate_as
n499_match_alternate_s1:
                        lea              rax, [rip + .Lx507_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n499_match_alternate_as
n499_match_alternate_s2:
                        lea              rax, [rip + .Lx507_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n499_match_alternate_as
.Lx507_40:
                                                                                        jmp   n505_match_patref_β
.Lx507_41:
                                                                                        jmp   n504_match_patref_β
.Lx507_42:
                                                                                        jmp   n500_match_sequence_β
n499_match_alternate_as:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_γ
n499_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n499_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx507_19:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n503_match_lit_α
n500_match_sequence_as:
                                                                                        jmp   n499_match_alternate_s2
n500_match_sequence_β:
                                                                                        jmp   n501_match_lit_β
n500_match_sequence_af:
                                                                                        jmp   n499_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n501_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n502_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n502_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n499_match_alternate_s2
n501_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n502_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n502_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx512_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx512_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx512_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx512_10
.Lx512_9:
                        xor              eax, eax
.Lx512_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx512_11:
                        test             rax, rax
                                                                                        jz    .Lx512_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx512_4]
                        lea              rdx, [rip + .Lx512_5]
                                                                                        jmp   rax
.Lx512_4:
                                                                                        jmp   n501_match_lit_α
.Lx512_5:
                                                                                        jmp   n503_match_lit_β
.Lx512_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx512_2:
                        test             rax, rax
                                                                                        je    .Lx512_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx512_7]
                        lea              rdx, [rip + .Lx512_8]
                                                                                        jmp   rax
.Lx512_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx512_2
.Lx512_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx512_2
.Lx512_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n503_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx512_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n501_match_lit_α
.Lx512_6:
                        add              rsp, 16
                                                                                        jmp   n503_match_lit_β
n502_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
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
                                                                                        jmp   n502_match_defer_α
n503_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n499_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n504_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx515_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                                                                                        jne   .Lx515_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx515_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx515_10
.Lx515_9:
                        xor              eax, eax
.Lx515_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx515_11:
                        test             rax, rax
                                                                                        jz    .Lx515_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx515_4]
                        lea              rdx, [rip + .Lx515_5]
                                                                                        jmp   rax
.Lx515_4:
                                                                                        jmp   n499_match_alternate_s1
.Lx515_5:
                                                                                        jmp   n499_match_alternate_af
.Lx515_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx515_2:
                        test             rax, rax
                                                                                        je    .Lx515_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx515_7]
                        lea              rdx, [rip + .Lx515_8]
                                                                                        jmp   rax
.Lx515_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx515_2
.Lx515_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx515_2
.Lx515_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n499_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx515_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n499_match_alternate_s1
.Lx515_6:
                        add              rsp, 16
                                                                                        jmp   n499_match_alternate_af
n504_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n505_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx516_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                                                                                        jne   .Lx516_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx516_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx516_10
.Lx516_9:
                        xor              eax, eax
.Lx516_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx516_11:
                        test             rax, rax
                                                                                        jz    .Lx516_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx516_4]
                        lea              rdx, [rip + .Lx516_5]
                                                                                        jmp   rax
.Lx516_4:
                                                                                        jmp   n499_match_alternate_s0
.Lx516_5:
                                                                                        jmp   n499_match_alternate_af
.Lx516_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx516_2
.Lx516_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx516_2
.Lx516_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n499_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx516_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n499_match_alternate_s0
.Lx516_6:
                        add              rsp, 16
                                                                                        jmp   n499_match_alternate_af
n505_match_patref_β:
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
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n517_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx527_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n525_match_patref_α
.Lx527_21:
                        lea              rax, [rip + .Lx527_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n518_match_sequence_α
n517_match_alternate_s0:
                        lea              rax, [rip + .Lx527_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n517_match_alternate_as
n517_match_alternate_s1:
                        lea              rax, [rip + .Lx527_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n517_match_alternate_as
.Lx527_40:
                                                                                        jmp   n525_match_patref_β
.Lx527_41:
                                                                                        jmp   n518_match_sequence_β
n517_match_alternate_as:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$3_γ
n517_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n517_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx527_19:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n518_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n522_match_assign_save_α
n518_match_sequence_as:
                                                                                        jmp   n517_match_alternate_s1
n518_match_sequence_β:
                                                                                        jmp   n521_match_assign_cond_β
n518_match_sequence_af:
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n519_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n520_match_defer_α
n519_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n524_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n520_match_defer_α:
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx532_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx532_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx532_10
.Lx532_9:
                        xor              eax, eax
.Lx532_10:
                        test             rax, rax
                                                                                        jz    .Lx532_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx532_4]
                        lea              rdx, [rip + .Lx532_5]
                                                                                        jmp   rax
.Lx532_4:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n521_match_assign_cond_α
.Lx532_5:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n519_match_assign_save_β
.Lx532_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx532_2:
                        test             rax, rax
                                                                                        je    .Lx532_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_7]
                        lea              rdx, [rip + .Lx532_8]
                                                                                        jmp   rax
.Lx532_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx532_2
.Lx532_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx532_2
.Lx532_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n519_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx532_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n521_match_assign_cond_α
.Lx532_6:
                        add              rsp, 16
                                                                                        jmp   n519_match_assign_save_β
n520_match_defer_β:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n519_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n521_match_assign_cond_α:
                        lea              rdi, [rbp + 176]
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
                                                                                        jmp   n517_match_alternate_s1
n521_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n520_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n522_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n523_match_any_α
n522_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n523_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx538_240
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
.Lx538_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx538_0
                        cmp              esi, 45
                                                                                        je    .Lx538_0
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
.Lx538_0:
                        add              r14d, 1
                                                                                        jmp   n524_match_assign_cond_α
n523_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n524_match_assign_cond_α:
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
                                                                                        jmp   n519_match_assign_save_α
n524_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n523_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n525_match_patref_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
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
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n517_match_alternate_s0
.Lx541_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n517_match_alternate_af
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
                                                                                        js    n517_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx541_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n517_match_alternate_s0
.Lx541_6:
                        add              rsp, 16
                                                                                        jmp   n517_match_alternate_af
n525_match_patref_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n517_match_alternate_af
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
                                                                                        jmp   qword ptr [rbp + 208]
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
                        lea              rax, [rip + n542_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n542_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n555_match_patref_α
n542_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n542_match_sequence_β:
                                                                                        jmp   n543_match_arbno_β
n542_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n543_match_arbno_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                        add              rsp, 48
                                                                                        jmp   proc_PAT$4_γ
n543_match_arbno_β:
                        sub              rsp, 48
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
                                                                                        jmp   n544_match_alternate_α
n543_match_arbno_as:
                        sub              rsp, 48
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n544_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                        add              rsp, 48
                                                                                        jmp   proc_PAT$4_γ
n543_match_arbno_af:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx559_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n544_match_alternate_β
.Lx559_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                        add              rsp, 48
                                                                                        jmp   n555_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n544_match_alternate_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx561_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n550_match_sequence_α
.Lx561_21:
                        lea              rax, [rip + .Lx561_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n545_match_sequence_α
n544_match_alternate_s0:
                        lea              rax, [rip + .Lx561_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n544_match_alternate_as
n544_match_alternate_s1:
                        lea              rax, [rip + .Lx561_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n544_match_alternate_as
.Lx561_40:
                                                                                        jmp   n550_match_sequence_β
.Lx561_41:
                                                                                        jmp   n545_match_sequence_β
n544_match_alternate_as:
                        add              rsp, 48
                                                                                        jmp   n543_match_arbno_as
n544_match_alternate_β:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n544_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx561_19:
                        add              rsp, 48
                                                                                        jmp   n543_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n545_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n549_match_lit_α
n545_match_sequence_as:
                                                                                        jmp   n544_match_alternate_s1
n545_match_sequence_β:
                                                                                        jmp   n548_match_assign_cond_β
n545_match_sequence_af:
                                                                                        jmp   n544_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n546_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n547_match_patref_α
n546_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n549_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n547_match_patref_α:
                        sub              rsp, 32
                        mov              qword ptr [rbp + 320], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx566_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx566_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx566_10
.Lx566_9:
                        xor              eax, eax
.Lx566_10:
                        test             rax, rax
                                                                                        jz    .Lx566_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx566_4]
                        lea              rdx, [rip + .Lx566_5]
                                                                                        jmp   rax
.Lx566_4:
                        mov              rsp, qword ptr [rbp + 320]
                        add              rsp, 32
                                                                                        jmp   n548_match_assign_cond_α
.Lx566_5:
                        mov              rsp, qword ptr [rbp + 320]
                        add              rsp, 32
                                                                                        jmp   n546_match_assign_save_β
.Lx566_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx566_2:
                        test             rax, rax
                                                                                        je    .Lx566_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx566_7]
                        lea              rdx, [rip + .Lx566_8]
                                                                                        jmp   rax
.Lx566_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx566_2
.Lx566_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx566_2
.Lx566_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx566_240
                        add              rsp, 32
                                                                                        jmp   n546_match_assign_save_β
.Lx566_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx566_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 32
                                                                                        jmp   n548_match_assign_cond_α
.Lx566_6:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n546_match_assign_save_β
n547_match_patref_β:
                        sub              rsp, 32
                        mov              rsp, qword ptr [rbp + 320]
                        add              rsp, 32
                                                                                        jmp   n546_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n548_match_assign_cond_α:
                        lea              rdi, [rbp + 288]
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
                                                                                        jmp   n544_match_alternate_s1
n548_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n547_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n549_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n544_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n544_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n546_match_assign_save_α
n549_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n544_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n550_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n554_match_lit_α
n550_match_sequence_as:
                                                                                        jmp   n544_match_alternate_s0
n550_match_sequence_β:
                                                                                        jmp   n553_match_assign_cond_β
n550_match_sequence_af:
                                                                                        jmp   n544_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n551_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n552_match_patref_α
n551_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n554_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n552_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx575_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx575_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx575_10
.Lx575_9:
                        xor              eax, eax
.Lx575_10:
                        test             rax, rax
                                                                                        jz    .Lx575_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx575_4]
                        lea              rdx, [rip + .Lx575_5]
                                                                                        jmp   rax
.Lx575_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n553_match_assign_cond_α
.Lx575_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n551_match_assign_save_β
.Lx575_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx575_2:
                        test             rax, rax
                                                                                        je    .Lx575_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx575_7]
                        lea              rdx, [rip + .Lx575_8]
                                                                                        jmp   rax
.Lx575_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx575_2
.Lx575_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx575_2
.Lx575_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n551_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx575_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n553_match_assign_cond_α
.Lx575_6:
                        add              rsp, 16
                                                                                        jmp   n551_match_assign_save_β
n552_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n551_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n553_match_assign_cond_α:
                        lea              rdi, [rbp + 208]
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
                                                                                        jmp   n544_match_alternate_s0
n553_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n552_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n554_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n544_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n544_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n551_match_assign_save_α
n554_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n544_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n555_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
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
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n543_match_arbno_α
.Lx580_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
.Lx580_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx580_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n543_match_arbno_α
.Lx580_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n555_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
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
                                                                                        jmp   qword ptr [rbp + 336]
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
                        lea              rax, [rip + n581_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n581_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n594_match_patref_α
n581_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n581_match_sequence_β:
                                                                                        jmp   n582_match_arbno_β
n581_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n582_match_arbno_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                        add              rsp, 48
                                                                                        jmp   proc_PAT$5_γ
n582_match_arbno_β:
                        sub              rsp, 48
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
                                                                                        jmp   n583_match_alternate_α
n582_match_arbno_as:
                        sub              rsp, 48
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n583_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                        add              rsp, 48
                                                                                        jmp   proc_PAT$5_γ
n582_match_arbno_af:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx598_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n583_match_alternate_β
.Lx598_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                        add              rsp, 48
                                                                                        jmp   n594_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n583_match_alternate_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx600_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n589_match_sequence_α
.Lx600_21:
                        lea              rax, [rip + .Lx600_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n584_match_sequence_α
n583_match_alternate_s0:
                        lea              rax, [rip + .Lx600_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n583_match_alternate_as
n583_match_alternate_s1:
                        lea              rax, [rip + .Lx600_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n583_match_alternate_as
.Lx600_40:
                                                                                        jmp   n589_match_sequence_β
.Lx600_41:
                                                                                        jmp   n584_match_sequence_β
n583_match_alternate_as:
                        add              rsp, 48
                                                                                        jmp   n582_match_arbno_as
n583_match_alternate_β:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n583_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx600_19:
                        add              rsp, 48
                                                                                        jmp   n582_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n584_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n588_match_lit_α
n584_match_sequence_as:
                                                                                        jmp   n583_match_alternate_s1
n584_match_sequence_β:
                                                                                        jmp   n587_match_assign_cond_β
n584_match_sequence_af:
                                                                                        jmp   n583_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n585_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n586_match_patref_α
n585_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n588_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n586_match_patref_α:
                        sub              rsp, 32
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx605_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx605_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx605_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx605_10
.Lx605_9:
                        xor              eax, eax
.Lx605_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx605_11:
                        test             rax, rax
                                                                                        jz    .Lx605_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx605_4]
                        lea              rdx, [rip + .Lx605_5]
                                                                                        jmp   rax
.Lx605_4:
                        add              rsp, 32
                                                                                        jmp   n587_match_assign_cond_α
.Lx605_5:
                        add              rsp, 32
                                                                                        jmp   n585_match_assign_save_β
.Lx605_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx605_2:
                        test             rax, rax
                                                                                        je    .Lx605_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx605_7]
                        lea              rdx, [rip + .Lx605_8]
                                                                                        jmp   rax
.Lx605_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx605_2
.Lx605_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx605_2
.Lx605_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx605_240
                        add              rsp, 32
                                                                                        jmp   n585_match_assign_save_β
.Lx605_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx605_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 32
                                                                                        jmp   n587_match_assign_cond_α
.Lx605_6:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n585_match_assign_save_β
n586_match_patref_β:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n587_match_assign_cond_α:
                        lea              rdi, [rbp + 288]
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
                                                                                        jmp   n583_match_alternate_s1
n587_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n586_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n588_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n583_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n583_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n585_match_assign_save_α
n588_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n583_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n589_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n593_match_lit_α
n589_match_sequence_as:
                                                                                        jmp   n583_match_alternate_s0
n589_match_sequence_β:
                                                                                        jmp   n592_match_assign_cond_β
n589_match_sequence_af:
                                                                                        jmp   n583_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n590_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n591_match_patref_α
n590_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n593_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n591_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx614_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx614_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx614_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx614_10
.Lx614_9:
                        xor              eax, eax
.Lx614_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx614_11:
                        test             rax, rax
                                                                                        jz    .Lx614_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx614_4]
                        lea              rdx, [rip + .Lx614_5]
                                                                                        jmp   rax
.Lx614_4:
                                                                                        jmp   n592_match_assign_cond_α
.Lx614_5:
                                                                                        jmp   n590_match_assign_save_β
.Lx614_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx614_2:
                        test             rax, rax
                                                                                        je    .Lx614_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx614_7]
                        lea              rdx, [rip + .Lx614_8]
                                                                                        jmp   rax
.Lx614_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx614_2
.Lx614_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx614_2
.Lx614_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n590_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx614_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n592_match_assign_cond_α
.Lx614_6:
                        add              rsp, 16
                                                                                        jmp   n590_match_assign_save_β
n591_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n592_match_assign_cond_α:
                        lea              rdi, [rbp + 208]
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
                                                                                        jmp   n583_match_alternate_s0
n592_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n591_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n593_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n583_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n583_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n590_match_assign_save_α
n593_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n583_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n594_match_patref_α:
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
                                                                                        jmp   n582_match_arbno_α
.Lx619_5:
                                                                                        jmp   proc_PAT$5_ω
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
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx619_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n582_match_arbno_α
.Lx619_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n594_match_patref_β:
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
                                                                                        jmp   qword ptr [rbp + 336]
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
n620_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n621_call_α
.Lx624_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n621_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lbynamefn238:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn238]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_PAT$6_scanfail
                                                                                        jmp   n622_match_value_α
n621_call_β:
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n622_match_value_α:
                        lea              rdi, [rbp + 32]
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
                        lea              rdi, [rbp + 32]
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
                        lea              rax, [rip + n629_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n629_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n639_lit_integer_α
n629_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n629_match_sequence_β:
                                                                                        jmp   n631_match_rpos_β
n629_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n631_match_rpos_α
n630_lit_integer_β:
                                                                                        jmp   n632_match_arbno_β
.Lx643_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n631_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n632_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n631_match_rpos_β:
                                                                                        jmp   n632_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n632_match_arbno_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                        add              rsp, 48
                                                                                        jmp   n630_lit_integer_α
n632_match_arbno_β:
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
                                                                                        jmp   n633_match_sequence_α
n632_match_arbno_as:
                        sub              rsp, 48
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n633_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                        add              rsp, 48
                                                                                        jmp   n630_lit_integer_α
n632_match_arbno_af:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx646_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n633_match_sequence_β
.Lx646_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                        add              rsp, 48
                                                                                        jmp   n640_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n633_match_sequence_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n638_match_patref_α
n633_match_sequence_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n632_match_arbno_as
n633_match_sequence_β:
                        sub              rsp, 32
                                                                                        jmp   n636_match_assign_cond_β
n633_match_sequence_af:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n632_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n634_match_assign_save_α:
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        add              rsp, 32
                                                                                        jmp   n635_match_patref_α
n634_match_assign_save_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n637_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n635_match_patref_α:
                        sub              rsp, 32
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
                        add              rsp, 32
                                                                                        jmp   n636_match_assign_cond_α
.Lx651_5:
                        add              rsp, 32
                                                                                        jmp   n634_match_assign_save_β
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
                                                                                        jns   .Lx651_240
                        add              rsp, 32
                                                                                        jmp   n634_match_assign_save_β
.Lx651_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx651_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 32
                                                                                        jmp   n636_match_assign_cond_α
.Lx651_6:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n634_match_assign_save_β
n635_match_patref_β:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n636_match_assign_cond_α:
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
                                                                                        jmp   n632_match_arbno_as
n636_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n635_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n637_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                                                                                        jne   .Lx654_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx654_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n634_match_assign_save_α
.Lx654_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n638_match_patref_β
.Lx654_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx654_2
.Lx654_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx654_2
.Lx654_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n638_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx654_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n634_match_assign_save_α
.Lx654_6:
                        add              rsp, 16
                                                                                        jmp   n638_match_patref_β
n637_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n638_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n638_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx655_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx655_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx655_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx655_10
.Lx655_9:
                        xor              eax, eax
.Lx655_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx655_11:
                        test             rax, rax
                                                                                        jz    .Lx655_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx655_4]
                        lea              rdx, [rip + .Lx655_5]
                                                                                        jmp   rax
.Lx655_4:
                                                                                        jmp   n637_match_patref_α
.Lx655_5:
                                                                                        jmp   n632_match_arbno_af
.Lx655_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx655_2:
                        test             rax, rax
                                                                                        je    .Lx655_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx655_7]
                        lea              rdx, [rip + .Lx655_8]
                                                                                        jmp   rax
.Lx655_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx655_2
.Lx655_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx655_2
.Lx655_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n632_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx655_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n637_match_patref_α
.Lx655_6:
                        add              rsp, 16
                                                                                        jmp   n632_match_arbno_af
n638_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n640_match_pos_α
n639_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx656_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n640_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n632_match_arbno_α
n640_match_pos_β:
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
                        sub              rsp, 4824
                        mov              rdi, rsp
                        mov              ecx, 4824
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4816], rbp
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
#         DEFINE('SGN()p1')                       :(SGN_x)
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n658_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n659_call_α
n658_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n661_keyword_snobol4_α
.Lx957_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n659_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd959:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd959]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx958_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n661_keyword_snobol4_α
.Lx958_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n660_assign_α
n659_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n661_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n660_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 32
                                                                                        jmp   n661_keyword_snobol4_α
n660_assign_β:
                        add              rsp, 32
                                                                                        jmp   n661_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n661_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx961_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n662_assign_α
n661_keyword_snobol4_β:
                        add              rsp, 16
                                                                                        jmp   n663_lit_string_α
.Lx961_0:
                        .quad            .Lx961_0_s
.Lx961_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n662_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        add              rsp, 16
                                                                                        jmp   n663_lit_string_α
n662_assign_β:
                        add              rsp, 16
                                                                                        jmp   n663_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n664_assign_α
n663_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n665_lit_string_α
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n664_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        add              rsp, 16
                                                                                        jmp   n665_lit_string_α
n664_assign_β:
                        add              rsp, 16
                                                                                        jmp   n665_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n666_call_α
n665_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n668_lit_string_α
.Lx965_0:
                        .quad            .Lx965_0_s
.Lx965_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n666_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd967:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd967]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx966_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n668_lit_string_α
.Lx966_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n667_assign_α
n666_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n668_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n667_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        add              rsp, 32
                                                                                        jmp   n668_lit_string_α
n667_assign_β:
                        add              rsp, 32
                                                                                        jmp   n668_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n669_call_α
n668_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n671_lit_string_α
.Lx969_0:
                        .quad            .Lx969_0_s
.Lx969_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n669_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd971:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd971]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx970_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n671_lit_string_α
.Lx970_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n670_assign_α
n669_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n671_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n670_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        add              rsp, 32
                                                                                        jmp   n671_lit_string_α
n670_assign_β:
                        add              rsp, 32
                                                                                        jmp   n671_lit_string_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n672_call_α
n671_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n674_lit_string_α
.Lx973_0:
                        .quad            .Lx973_0_s
.Lx973_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n672_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd975:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd975]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx974_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n674_lit_string_α
.Lx974_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n673_assign_α
n672_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n673_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        add              rsp, 32
                                                                                        jmp   n674_lit_string_α
n673_assign_β:
                        add              rsp, 32
                                                                                        jmp   n674_lit_string_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n675_call_α
n674_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n677_lit_string_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n675_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd979:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd979]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx978_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n677_lit_string_α
.Lx978_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n676_assign_α
n675_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n677_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        add              rsp, 32
                                                                                        jmp   n677_lit_string_α
n676_assign_β:
                        add              rsp, 32
                                                                                        jmp   n677_lit_string_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n678_call_α
n677_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n680_lit_string_α
.Lx981_0:
                        .quad            .Lx981_0_s
.Lx981_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n678_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd983]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx982_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n680_lit_string_α
.Lx982_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n679_assign_α
n678_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n680_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n679_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        add              rsp, 32
                                                                                        jmp   n680_lit_string_α
n679_assign_β:
                        add              rsp, 32
                                                                                        jmp   n680_lit_string_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n680_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n681_call_α
n680_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n683_lit_string_α
.Lx985_0:
                        .quad            .Lx985_0_s
.Lx985_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n681_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd987]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx986_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n683_lit_string_α
.Lx986_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n682_assign_α
n681_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n683_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n682_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        add              rsp, 32
                                                                                        jmp   n683_lit_string_α
n682_assign_β:
                        add              rsp, 32
                                                                                        jmp   n683_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n684_call_α
n683_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n686_lit_string_α
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd991]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx990_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n686_lit_string_α
.Lx990_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n685_assign_α
n684_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n686_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n685_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        add              rsp, 32
                                                                                        jmp   n686_lit_string_α
n685_assign_β:
                        add              rsp, 32
                                                                                        jmp   n686_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n687_call_α
n686_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n689_lit_string_α
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n687_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd995]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx994_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n689_lit_string_α
.Lx994_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n688_assign_α
n687_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n689_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n688_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        add              rsp, 32
                                                                                        jmp   n689_lit_string_α
n688_assign_β:
                        add              rsp, 32
                                                                                        jmp   n689_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n690_lit_integer_α
n689_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n692_lit_integer_α
.Lx997_0:
                        .quad            .Lx997_0_s
.Lx997_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n691_call_α
n690_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n692_lit_integer_α
.Lx998_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n691_call_α:
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
.Lrkfnzd1000:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1000]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx999_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n692_lit_integer_α
.Lx999_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n692_lit_integer_α
n691_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n692_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n693_call_α
n692_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n695_call_α
.Lx1001_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n693_call_α:
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
                        lea              rdi, [rip + .Lbynamefnzd288]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1002_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n695_call_α
.Lx1002_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n694_assign_α
n693_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n695_call_α
#-----------------------------------------------------------------------------------------------------------------------
n694_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        add              rsp, 32
                                                                                        jmp   n695_call_α
n694_assign_β:
                        add              rsp, 32
                                                                                        jmp   n695_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n695_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1005:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1005]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1004_240
                        add              rsp, 16
                                                                                        jmp   n697_var_α
.Lx1004_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n696_assign_α
n695_call_β:
                        add              rsp, 16
                                                                                        jmp   n697_var_α
#-----------------------------------------------------------------------------------------------------------------------
n696_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        add              rsp, 16
                                                                                        jmp   n697_var_α
n696_assign_β:
                        add              rsp, 16
                                                                                        jmp   n697_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n697_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n698_lit_string_α
n697_var_β:
                        add              rsp, 16
                                                                                        jmp   n702_var_α
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n699_subscript_α
n698_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n702_var_α
.Lx1008_0:
                        .quad            .Lx1008_0_s
.Lx1008_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n699_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1009_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n702_var_α
.Lx1009_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n700_lit_integer_α
n699_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n702_var_α
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n701_assign_var_α
n700_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n702_var_α
.Lx1010_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n701_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1011_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n702_var_α
.Lx1011_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n702_var_α
n701_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n702_var_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n702_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n703_lit_string_α
n702_var_β:
                        add              rsp, 16
                                                                                        jmp   n707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1013_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n704_subscript_α
n703_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n707_var_α
.Lx1013_0:
                        .quad            .Lx1013_0_s
.Lx1013_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n704_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1014_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n707_var_α
.Lx1014_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n705_lit_integer_α
n704_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n706_assign_var_α
n705_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n707_var_α
.Lx1015_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n706_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1016_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n707_var_α
.Lx1016_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n707_var_α
n706_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n707_var_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n707_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n708_lit_string_α
n707_var_β:
                        add              rsp, 16
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n709_subscript_α
n708_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n712_var_α
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n709_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1019_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n712_var_α
.Lx1019_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n710_lit_integer_α
n709_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n711_assign_var_α
n710_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n712_var_α
.Lx1020_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n711_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1021_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n712_var_α
.Lx1021_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n712_var_α
n711_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n712_var_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1022_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1022_240
                        add              rsp, 16
                                                                                        jmp   n744_var_α
.Lx1022_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n713_assign_α
n712_var_β:
                        add              rsp, 16
                                                                                        jmp   n744_var_α
.Lx1022_0:
                        .quad            .Lx1022_0_s
.Lx1022_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n713_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        add              rsp, 16
                                                                                        jmp   n714_var_α
n713_assign_β:
                        add              rsp, 16
                                                                                        jmp   n744_var_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n714_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n715_var_α
n714_var_β:
                        add              rsp, 16
                                                                                        jmp   n720_var_α
#-----------------------------------------------------------------------------------------------------------------------
n715_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n716_binop_α
n715_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n720_var_α
#-----------------------------------------------------------------------------------------------------------------------
n716_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n717_var_α
n716_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n720_var_α
#-----------------------------------------------------------------------------------------------------------------------
n717_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n718_binop_α
n717_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n720_var_α
#-----------------------------------------------------------------------------------------------------------------------
n718_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n719_assign_α
n718_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n720_var_α
#-----------------------------------------------------------------------------------------------------------------------
n719_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 80
                                                                                        jmp   n720_var_α
n719_assign_β:
                        add              rsp, 80
                                                                                        jmp   n720_var_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n721_call_α
n720_var_β:
                        add              rsp, 16
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n721_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1032:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1032]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1031_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n712_var_α
.Lx1031_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n722_lit_integer_α
n721_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n723_coerce_numeric_α
n722_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n712_var_α
.Lx1033_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n723_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1035_1
                        cmp              eax, 6
                                                                                        jne   .Lx1035_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1035_0
.Lx1035_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n724_coerce_numeric_α
.Lx1035_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n724_coerce_numeric_α
n723_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n724_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1037_1
                        cmp              eax, 6
                                                                                        jne   .Lx1037_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1037_0
.Lx1037_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n725_cmp_test_α
.Lx1037_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n725_cmp_test_α
n724_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n725_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1039_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n712_var_α
.Lx1039_240:
                        add              rsp, 96
                                                                                        jmp   n726_var_α
n725_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n712_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n726_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n727_var_α
n726_var_β:
                        add              rsp, 16
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n727_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n728_binop_α
n727_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n728_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n729_assign_α
n728_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n729_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 48
                                                                                        jmp   n730_lit_string_α
n729_assign_β:
                        add              rsp, 48
                                                                                        jmp   n730_lit_string_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1044_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n731_assign_α
n730_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n732_var_α
.Lx1044_0:
                        .quad            .Lx1044_0_s
.Lx1044_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n731_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        add              rsp, 16
                                                                                        jmp   n732_var_α
n731_assign_β:
                        add              rsp, 16
                                                                                        jmp   n732_var_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n732_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n733_call_α
n732_var_β:
                        add              rsp, 16
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n733_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd1048]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1047_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n712_var_α
.Lx1047_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n734_lit_integer_α
n733_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n735_coerce_numeric_α
n734_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n712_var_α
.Lx1049_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n735_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1051_1
                        cmp              eax, 6
                                                                                        jne   .Lx1051_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1051_0
.Lx1051_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n736_coerce_numeric_α
.Lx1051_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n736_coerce_numeric_α
n735_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n736_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1053_1
                        cmp              eax, 6
                                                                                        jne   .Lx1053_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx1053_0
.Lx1053_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n737_cmp_test_α
.Lx1053_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n737_cmp_test_α
n736_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n737_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1055_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n712_var_α
.Lx1055_240:
                        add              rsp, 96
                                                                                        jmp   n738_var_α
n737_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n712_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n738_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n739_var_α
n738_var_β:
                        add              rsp, 16
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n739_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n740_binop_α
n739_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n740_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n741_assign_α
n740_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n741_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 48
                                                                                        jmp   n742_lit_string_α
n741_assign_β:
                        add              rsp, 48
                                                                                        jmp   n742_lit_string_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n743_assign_α
n742_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n712_var_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n743_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        add              rsp, 16
                                                                                        jmp   n712_var_α
n743_assign_β:
                        add              rsp, 16
                                                                                        jmp   n712_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n744_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n745_var_α
n744_var_β:
                        add              rsp, 16
                                                                                        jmp   n750_call_α
#-----------------------------------------------------------------------------------------------------------------------
n745_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n746_binop_α
n745_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n750_call_α
#-----------------------------------------------------------------------------------------------------------------------
n746_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n747_var_α
n746_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n750_call_α
#-----------------------------------------------------------------------------------------------------------------------
n747_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n748_binop_α
n747_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n750_call_α
#-----------------------------------------------------------------------------------------------------------------------
n748_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n749_assign_α
n748_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n750_call_α
#-----------------------------------------------------------------------------------------------------------------------
n749_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        add              rsp, 80
                                                                                        jmp   n750_call_α
n749_assign_β:
                        add              rsp, 80
                                                                                        jmp   n750_call_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n750_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1069:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1069]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1068_240
                        add              rsp, 16
                                                                                        jmp   n752_var_α
.Lx1068_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n751_assign_α
n750_call_β:
                        add              rsp, 16
                                                                                        jmp   n752_var_α
#-----------------------------------------------------------------------------------------------------------------------
n751_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        add              rsp, 16
                                                                                        jmp   n752_var_α
n751_assign_β:
                        add              rsp, 16
                                                                                        jmp   n752_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n752_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx
                                                                                        jmp   n753_match_head_α
n752_var_β:
                                                                                        jmp   n764_call_α
#-----------------------------------------------------------------------------------------------------------------------
n753_match_head_α:
                        mov              qword ptr [rbp + 4512], r13
                        mov              qword ptr [rbp + 4520], r14
                        mov              qword ptr [rbp + 4528], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 4536], rax
                        mov              qword ptr [rbp + 4504], rbp
                        mov              rdi, qword ptr [rbp + 4560]
                        mov              rsi, qword ptr [rbp + 4568]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 4480], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 4472], rax
                        mov              dword ptr [rbp + 4464], 0
.Lx1073_0:
                        mov              r14d, dword ptr [rbp + 4464]
                                                                                        jmp   n754_match_patref_α
n753_match_head_β:
                        add              dword ptr [rbp + 4464], 1
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, r15d
                                                                                        jg    .Lx1073_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1073_1
                                                                                        jmp   .Lx1073_0
.Lx1073_1:
                        mov              rax, qword ptr [rbp + 4472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 4480]
                        mov              r10, qword ptr [1879048192]
.Lx1073_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1073_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 4512]
                        mov              r14, qword ptr [rbp + 4520]
                        mov              r15, qword ptr [rbp + 4528]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 4536]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 4504]
                                                                                        jmp   n764_call_α
#-----------------------------------------------------------------------------------------------------------------------
n754_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx1074_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                                                                                        jne   .Lx1074_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx1074_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx1074_10
.Lx1074_9:
                        xor              eax, eax
.Lx1074_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx1074_11:
                        test             rax, rax
                                                                                        jz    .Lx1074_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1074_4]
                        lea              rdx, [rip + .Lx1074_5]
                                                                                        jmp   rax
.Lx1074_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 4464], eax
                                                                                        jmp   n755_match_release_α
.Lx1074_5:
                                                                                        jmp   n753_match_head_β
.Lx1074_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx1074_2:
                        test             rax, rax
                                                                                        je    .Lx1074_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1074_7]
                        lea              rdx, [rip + .Lx1074_8]
                                                                                        jmp   rax
.Lx1074_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1074_2
.Lx1074_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1074_2
.Lx1074_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n753_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1074_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n755_match_release_α
.Lx1074_6:
                        add              rsp, 16
                                                                                        jmp   n753_match_head_β
n754_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n755_match_release_α:
                        mov              rax, qword ptr [rbp + 4472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 4480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx1076_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1076_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1076_1:
                        test             rax, rax
                                                                                        je    .Lx1076_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1076_3]
                        lea              rdx, [rip + .Lx1076_4]
                                                                                        jmp   rax
.Lx1076_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1076_1
.Lx1076_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1076_1
.Lx1076_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1076_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1076_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 4512]
                        mov              r14, qword ptr [rbp + 4520]
                        mov              r15, qword ptr [rbp + 4528]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 4536]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 4504]
                                                                                        jmp   n756_call_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n756_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1078:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1078]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1077_240
                        add              rsp, 16
                                                                                        jmp   n758_lit_string_α
.Lx1077_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n757_assign_α
n756_call_β:
                        add              rsp, 16
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n757_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n758_lit_string_α
n757_assign_β:
                        add              rsp, 16
                                                                                        jmp   n758_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1080_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n759_var_α
n758_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1080_0:
                        .quad            .Lx1080_0_s
.Lx1080_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n759_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n760_var_α
n759_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n760_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n761_binop_α
n760_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n761_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1083_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1083_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n762_binop_α
n761_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n762_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n763_assign_α
n762_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n763_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1085_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n763_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1085_0:
                        .quad            .Lx1085_0_s
.Lx1085_0_s:
                        .string          "TERMINAL"
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n764_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1087:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1087]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1086_240
                        add              rsp, 16
                                                                                        jmp   n766_lit_string_α
.Lx1086_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n765_assign_α
n764_call_β:
                        add              rsp, 16
                                                                                        jmp   n766_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n765_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        add              rsp, 16
                                                                                        jmp   n766_lit_string_α
n765_assign_β:
                        add              rsp, 16
                                                                                        jmp   n766_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n767_assign_α
n766_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n768_lit_string_α
.Lx1089_0:
                        .quad            .Lx1089_0_s
.Lx1089_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n767_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1090_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n768_lit_string_α
n767_assign_β:
                        add              rsp, 16
                                                                                        jmp   n768_lit_string_α
.Lx1090_0:
                        .quad            .Lx1090_0_s
.Lx1090_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1091_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n769_var_α
n768_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx1091_0:
                        .quad            .Lx1091_0_s
.Lx1091_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n769_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n770_var_α
n769_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n771_binop_α
n770_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n771_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1094_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx1094_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n772_binop_α
n771_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n772_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n773_assign_α
n772_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1096_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n773_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx1096_0:
                        .quad            .Lx1096_0_s
.Lx1096_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n774_goto_α:
                                                                                        jmp   n775_var_α
n774_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n775_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n776_lit_integer_α
n775_var_β:
                                                                                        jmp   n781_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n777_subscript_α
n776_lit_integer_β:
                                                                                        jmp   n781_lit_integer_α
.Lx1099_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n777_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1100_240
                        add              rsp, 16
                                                                                        jmp   n781_lit_integer_α
.Lx1100_240:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n778_deref_α
n777_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n781_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n778_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1101_240
                        add              rsp, 16
                                                                                        jmp   n781_lit_integer_α
.Lx1101_240:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n779_call_α
n778_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n781_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n779_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1103_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1103_5
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1103_6]
                        lea              rdx, [rip + .Lx1103_7]
                                                                                        jmp   rax
.Lx1103_6:
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
                                                                                        jmp   .Lx1103_2
.Lx1103_7:
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
                                                                                        jmp   .Lx1103_2
.Lx1103_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1103_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1103_21
.Lx1103_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        call             rt_arg_stage@PLT
.Lx1103_21:
                        mov              rdi, qword ptr [rip + .Lx1103_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1103_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1103_3]
                        lea              rdx, [rip + .Lx1103_4]
                                                                                        jmp   rax
.Lx1103_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1103_2
.Lx1103_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1103_2
.Lx1103_1:
                        call             rt_faildescr@PLT
.Lx1103_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n781_lit_integer_α
                                                                                        jmp   n780_assign_α
n779_call_β:
                                                                                        jmp   n781_lit_integer_α
.Lx1103_0:
                        .quad            .Lx1103_0_s
.Lx1103_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n780_assign_α:
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              rdi, qword ptr [rip + .Lx1104_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n781_lit_integer_α
n780_assign_β:
                                                                                        jmp   n781_lit_integer_α
.Lx1104_0:
                        .quad            .Lx1104_0_s
.Lx1104_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n782_assign_α
n781_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n783_lit_string_α
.Lx1105_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n782_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n783_lit_string_α
n782_assign_β:
                        add              rsp, 16
                                                                                        jmp   n783_lit_string_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx1107_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n784_call_α
n783_lit_string_β:
                                                                                        jmp   n786_lit_string_α
.Lx1107_0:
                        .quad            .Lx1107_0_s
.Lx1107_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n784_call_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn1109:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1109]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n786_lit_string_α
                                                                                        jmp   n785_assign_α
n784_call_β:
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n785_assign_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n786_lit_string_α
n785_assign_β:
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1111_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n787_call_α
n786_lit_string_β:
                                                                                        jmp   n789_save_restore_α
.Lx1111_0:
                        .quad            .Lx1111_0_s
.Lx1111_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n787_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1113:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1113]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n789_save_restore_α
                                                                                        jmp   n788_save_restore_α
n787_call_β:
                                                                                        jmp   n789_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n788_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n789_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n790_goto_α:
                                                                                        jmp   n658_lit_integer_α
n790_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n791_goto_α:
                                                                                        jmp   n792_var_α
n791_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n792_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n793_lit_integer_α
n792_var_β:
                        add              rsp, 16
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1121_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n794_binop_α
n793_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n796_var_α
.Lx1121_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n794_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1122_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n796_var_α
.Lx1122_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n795_assign_α
n794_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n796_var_α
n795_assign_β:
                        add              rsp, 48
                                                                                        jmp   n796_var_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n797_var_α
n796_var_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n797_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n798_subscript_α
n797_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n798_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1126_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
.Lx1126_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n799_assign_α
n798_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n799_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n786_lit_string_α
n799_assign_β:
                        add              rsp, 48
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n800_goto_α:
                                                                                        jmp   n658_lit_integer_α
n800_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n801_goto_α:
                                                                                        jmp   n802_var_α
n801_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n803_match_head_α
n802_var_β:
                                                                                        jmp   n816_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_match_head_α:
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
.Lx1132_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n804_match_sequence_α
n803_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1132_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1132_1
                                                                                        jmp   .Lx1132_0
.Lx1132_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx1132_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1132_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n816_var_α
#-----------------------------------------------------------------------------------------------------------------------
n804_match_sequence_α:
                                                                                        jmp   n814_lit_integer_α
n804_match_sequence_as:
                                                                                        jmp   n805_match_release_α
n804_match_sequence_β:
                                                                                        jmp   n812_match_rpos_β
n804_match_sequence_af:
                                                                                        jmp   n803_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n805_match_release_α:
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
.Lx1136_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1136_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1136_1:
                        test             rax, rax
                                                                                        je    .Lx1136_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1136_3]
                        lea              rdx, [rip + .Lx1136_4]
                                                                                        jmp   rax
.Lx1136_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1136_1
.Lx1136_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1136_1
.Lx1136_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx1136_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1136_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n806_var_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n807_var_α
n806_var_β:
                        add              rsp, 16
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n808_subscript_α
n807_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n808_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1139_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n788_save_restore_α
.Lx1139_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n809_deref_α
n808_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n809_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1140_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n788_save_restore_α
.Lx1140_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n810_assign_α
n809_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n810_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 64
                                                                                        jmp   n788_save_restore_α
n810_assign_β:
                        add              rsp, 64
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n812_match_rpos_α
n811_lit_integer_β:
                                                                                        jmp   n813_match_any_β
.Lx1142_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n812_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n813_match_any_β
                                                                                        jmp   n805_match_release_α
n812_match_rpos_β:
                                                                                        jmp   n813_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n813_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n803_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n803_match_head_β
                        add              r14d, 1
                                                                                        jmp   n811_lit_integer_α
n813_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n803_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_integer_α:
                        mov              qword ptr [rsp + 544], 6
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n815_match_pos_α
n814_lit_integer_β:
                                                                                        jmp   n803_match_head_β
.Lx1146_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n815_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n803_match_head_β
                                                                                        jmp   n813_match_any_α
n815_match_pos_β:
                                                                                        jmp   n803_match_head_β
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n816_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n817_assign_α
n816_var_β:
                        add              rsp, 16
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n817_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n788_save_restore_α
n817_assign_β:
                        add              rsp, 16
                                                                                        jmp   n788_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n818_goto_α:
                                                                                        jmp   n816_var_α
n818_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n819_goto_α:
                                                                                        jmp   n658_lit_integer_α
n819_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n820_goto_α:
                                                                                        jmp   n821_var_α
n820_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n821_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n822_var_α
n821_var_β:
                                                                                        jmp   n827_var_α
#-----------------------------------------------------------------------------------------------------------------------
n822_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n823_subscript_α
n822_var_β:
                                                                                        jmp   n827_var_α
#-----------------------------------------------------------------------------------------------------------------------
n823_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1155_240
                        add              rsp, 16
                                                                                        jmp   n827_var_α
.Lx1155_240:
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        add              rsp, 16
                                                                                        jmp   n824_deref_α
n823_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n827_var_α
#-----------------------------------------------------------------------------------------------------------------------
n824_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1156_240
                        add              rsp, 16
                                                                                        jmp   n827_var_α
.Lx1156_240:
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        add              rsp, 16
                                                                                        jmp   n825_call_α
n824_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n827_var_α
#-----------------------------------------------------------------------------------------------------------------------
n825_call_α:
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
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 776]
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
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1158_21
.Lx1158_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
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
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n827_var_α
                                                                                        jmp   n826_assign_α
n825_call_β:
                                                                                        jmp   n827_var_α
.Lx1158_0:
                        .quad            .Lx1158_0_s
.Lx1158_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n826_assign_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n827_var_α
n826_assign_β:
                                                                                        jmp   n827_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n827_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n828_lit_integer_α
n827_var_β:
                        add              rsp, 16
                                                                                        jmp   n831_var_α
#-----------------------------------------------------------------------------------------------------------------------
n828_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n829_binop_α
n828_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n831_var_α
.Lx1161_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n829_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1162_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n831_var_α
.Lx1162_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n830_assign_α
n829_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n831_var_α
#-----------------------------------------------------------------------------------------------------------------------
n830_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n831_var_α
n830_assign_β:
                        add              rsp, 48
                                                                                        jmp   n831_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n832_var_α
n831_var_β:
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n833_subscript_α
n832_var_β:
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n833_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1166_240
                        add              rsp, 16
                                                                                        jmp   n842_lit_string_α
.Lx1166_240:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        add              rsp, 16
                                                                                        jmp   n834_var_α
n833_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n835_var_α
n834_var_β:
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n835_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n836_subscript_α
n835_var_β:
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n836_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1169_240
                        add              rsp, 16
                                                                                        jmp   n842_lit_string_α
.Lx1169_240:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n837_deref_α
n836_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n837_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1170_240
                        add              rsp, 16
                                                                                        jmp   n842_lit_string_α
.Lx1170_240:
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        add              rsp, 16
                                                                                        jmp   n838_call_α
n837_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n842_lit_string_α
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
                        mov              rdi, qword ptr [rip + .Lx1172_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1172_5
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1172_6]
                        lea              rdx, [rip + .Lx1172_7]
                                                                                        jmp   rax
.Lx1172_6:
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
                                                                                        jmp   .Lx1172_2
.Lx1172_7:
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
                                                                                        jmp   .Lx1172_2
.Lx1172_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1172_20
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1172_21
.Lx1172_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        call             rt_arg_stage@PLT
.Lx1172_21:
                        mov              rdi, qword ptr [rip + .Lx1172_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1172_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1172_3]
                        lea              rdx, [rip + .Lx1172_4]
                                                                                        jmp   rax
.Lx1172_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1172_2
.Lx1172_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1172_2
.Lx1172_1:
                        call             rt_faildescr@PLT
.Lx1172_2:
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n842_lit_string_α
                                                                                        jmp   n839_var_α
n838_call_β:
                                                                                        jmp   n842_lit_string_α
.Lx1172_0:
                        .quad            .Lx1172_0_s
.Lx1172_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n839_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n840_binop_α
n839_var_β:
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n840_binop_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx1174_0
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx1174_0
                        mov              rax, qword ptr [rsp + 872]
                        mov              rcx, qword ptr [rsp + 984]
                        add              rax, rcx
                        mov              qword ptr [rsp + 848], 6
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n841_assign_var_α
.Lx1174_0:
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n842_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n841_assign_var_α
n840_binop_β:
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n841_assign_var_α:
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n842_lit_string_α
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n842_lit_string_α
n841_assign_var_β:
                                                                                        jmp   n842_lit_string_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n842_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n843_call_α
n842_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1176_0:
                        .quad            .Lx1176_0_s
.Lx1176_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n843_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1178:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1178]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1177_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1177_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n844_assign_α
n843_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
n844_assign_β:
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n845_goto_α:
                                                                                        jmp   n658_lit_integer_α
n845_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n846_goto_α:
                                                                                        jmp   n847_var_α
n846_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                                                                                        jmp   n848_var_α
n847_var_β:
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n848_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n849_subscript_α
n848_var_β:
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1184_240
                        add              rsp, 16
                                                                                        jmp   n853_var_α
.Lx1184_240:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n850_deref_α
n849_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1185_240
                        add              rsp, 16
                                                                                        jmp   n853_var_α
.Lx1185_240:
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        add              rsp, 16
                                                                                        jmp   n851_call_α
n850_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n851_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1187_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1187_5
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1187_6]
                        lea              rdx, [rip + .Lx1187_7]
                                                                                        jmp   rax
.Lx1187_6:
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
                                                                                        jmp   .Lx1187_2
.Lx1187_7:
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
                                                                                        jmp   .Lx1187_2
.Lx1187_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1187_20
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1187_21
.Lx1187_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        call             rt_arg_stage@PLT
.Lx1187_21:
                        mov              rdi, qword ptr [rip + .Lx1187_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1187_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1187_3]
                        lea              rdx, [rip + .Lx1187_4]
                                                                                        jmp   rax
.Lx1187_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1187_2
.Lx1187_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1187_2
.Lx1187_1:
                        call             rt_faildescr@PLT
.Lx1187_2:
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n853_var_α
                                                                                        jmp   n852_assign_α
n851_call_β:
                                                                                        jmp   n853_var_α
.Lx1187_0:
                        .quad            .Lx1187_0_s
.Lx1187_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n853_var_α
n852_assign_β:
                                                                                        jmp   n853_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n854_lit_integer_α
n853_var_β:
                        add              rsp, 16
                                                                                        jmp   n857_var_α
#-----------------------------------------------------------------------------------------------------------------------
n854_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n855_binop_α
n854_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n857_var_α
.Lx1190_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n855_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1191_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n857_var_α
.Lx1191_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_assign_α
n855_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n857_var_α
#-----------------------------------------------------------------------------------------------------------------------
n856_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n857_var_α
n856_assign_β:
                        add              rsp, 48
                                                                                        jmp   n857_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n857_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                                                                                        jmp   n858_var_α
n857_var_β:
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n858_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                                                                                        jmp   n859_subscript_α
n858_var_β:
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n859_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1195_240
                        add              rsp, 16
                                                                                        jmp   n868_lit_string_α
.Lx1195_240:
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        add              rsp, 16
                                                                                        jmp   n860_var_α
n859_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n861_var_α
n860_var_β:
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n861_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                                                                                        jmp   n862_subscript_α
n861_var_β:
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n862_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1198_240
                        add              rsp, 16
                                                                                        jmp   n868_lit_string_α
.Lx1198_240:
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        add              rsp, 16
                                                                                        jmp   n863_deref_α
n862_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n863_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1199_240
                        add              rsp, 16
                                                                                        jmp   n868_lit_string_α
.Lx1199_240:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        add              rsp, 16
                                                                                        jmp   n864_call_α
n863_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n864_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1201_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1201_5
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1201_6]
                        lea              rdx, [rip + .Lx1201_7]
                                                                                        jmp   rax
.Lx1201_6:
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
                                                                                        jmp   .Lx1201_2
.Lx1201_7:
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
                                                                                        jmp   .Lx1201_2
.Lx1201_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1201_20
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1201_21
.Lx1201_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        call             rt_arg_stage@PLT
.Lx1201_21:
                        mov              rdi, qword ptr [rip + .Lx1201_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1201_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1201_3]
                        lea              rdx, [rip + .Lx1201_4]
                                                                                        jmp   rax
.Lx1201_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1201_2
.Lx1201_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1201_2
.Lx1201_1:
                        call             rt_faildescr@PLT
.Lx1201_2:
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n868_lit_string_α
                                                                                        jmp   n865_var_α
n864_call_β:
                                                                                        jmp   n868_lit_string_α
.Lx1201_0:
                        .quad            .Lx1201_0_s
.Lx1201_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n865_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                                                                                        jmp   n866_binop_α
n865_var_β:
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n866_binop_α:
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx1203_0
                        mov              eax, dword ptr [rsp + 1408]
                        cmp              eax, 6
                                                                                        jne   .Lx1203_0
                        mov              rax, qword ptr [rsp + 1304]
                        mov              rcx, qword ptr [rsp + 1416]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 1280], 6
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n867_assign_var_α
.Lx1203_0:
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n868_lit_string_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                                                                                        jmp   n867_assign_var_α
n866_binop_β:
                                                                                        jmp   n868_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n867_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n868_lit_string_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                                                                                        jmp   n868_lit_string_α
n867_assign_var_β:
                                                                                        jmp   n868_lit_string_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n868_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1205_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n869_call_α
n868_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1205_0:
                        .quad            .Lx1205_0_s
.Lx1205_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n869_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1207:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1207]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1206_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1206_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n870_assign_α
n869_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
n870_assign_β:
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n871_goto_α:
                                                                                        jmp   n658_lit_integer_α
n871_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n872_goto_α:
                                                                                        jmp   n873_var_α
n872_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                                                                                        jmp   n874_var_α
n873_var_β:
                                                                                        jmp   n879_var_α
#-----------------------------------------------------------------------------------------------------------------------
n874_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n875_subscript_α
n874_var_β:
                                                                                        jmp   n879_var_α
#-----------------------------------------------------------------------------------------------------------------------
n875_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1213_240
                        add              rsp, 16
                                                                                        jmp   n879_var_α
.Lx1213_240:
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n876_deref_α
n875_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n879_var_α
#-----------------------------------------------------------------------------------------------------------------------
n876_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1214_240
                        add              rsp, 16
                                                                                        jmp   n879_var_α
.Lx1214_240:
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        add              rsp, 16
                                                                                        jmp   n877_call_α
n876_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n879_var_α
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
                        mov              rdi, qword ptr [rip + .Lx1216_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1216_5
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1216_6]
                        lea              rdx, [rip + .Lx1216_7]
                                                                                        jmp   rax
.Lx1216_6:
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
                                                                                        jmp   .Lx1216_2
.Lx1216_7:
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
                                                                                        jmp   .Lx1216_2
.Lx1216_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1216_20
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1216_21
.Lx1216_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        call             rt_arg_stage@PLT
.Lx1216_21:
                        mov              rdi, qword ptr [rip + .Lx1216_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1216_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1216_3]
                        lea              rdx, [rip + .Lx1216_4]
                                                                                        jmp   rax
.Lx1216_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1216_2
.Lx1216_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1216_2
.Lx1216_1:
                        call             rt_faildescr@PLT
.Lx1216_2:
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n879_var_α
                                                                                        jmp   n878_assign_α
n877_call_β:
                                                                                        jmp   n879_var_α
.Lx1216_0:
                        .quad            .Lx1216_0_s
.Lx1216_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n878_assign_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n879_var_α
n878_assign_β:
                                                                                        jmp   n879_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n879_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n880_lit_integer_α
n879_var_β:
                        add              rsp, 16
                                                                                        jmp   n883_var_α
#-----------------------------------------------------------------------------------------------------------------------
n880_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1219_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n881_binop_α
n880_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n883_var_α
.Lx1219_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n881_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1220_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n883_var_α
.Lx1220_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n882_assign_α
n881_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n883_var_α
#-----------------------------------------------------------------------------------------------------------------------
n882_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n883_var_α
n882_assign_β:
                        add              rsp, 48
                                                                                        jmp   n883_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                                                                                        jmp   n884_var_α
n883_var_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n884_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                                                                                        jmp   n885_subscript_α
n884_var_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n885_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1224_240
                        add              rsp, 16
                                                                                        jmp   n894_lit_string_α
.Lx1224_240:
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        add              rsp, 16
                                                                                        jmp   n886_var_α
n885_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n886_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                                                                                        jmp   n887_var_α
n886_var_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n887_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                                                                                        jmp   n888_subscript_α
n887_var_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n888_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1227_240
                        add              rsp, 16
                                                                                        jmp   n894_lit_string_α
.Lx1227_240:
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        add              rsp, 16
                                                                                        jmp   n889_deref_α
n888_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n889_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1228_240
                        add              rsp, 16
                                                                                        jmp   n894_lit_string_α
.Lx1228_240:
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        add              rsp, 16
                                                                                        jmp   n890_call_α
n889_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n890_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1230_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1230_5
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1230_6]
                        lea              rdx, [rip + .Lx1230_7]
                                                                                        jmp   rax
.Lx1230_6:
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
                                                                                        jmp   .Lx1230_2
.Lx1230_7:
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
                                                                                        jmp   .Lx1230_2
.Lx1230_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1230_20
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1230_21
.Lx1230_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        call             rt_arg_stage@PLT
.Lx1230_21:
                        mov              rdi, qword ptr [rip + .Lx1230_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1230_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1230_3]
                        lea              rdx, [rip + .Lx1230_4]
                                                                                        jmp   rax
.Lx1230_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1230_2
.Lx1230_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1230_2
.Lx1230_1:
                        call             rt_faildescr@PLT
.Lx1230_2:
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n894_lit_string_α
                                                                                        jmp   n891_var_α
n890_call_β:
                                                                                        jmp   n894_lit_string_α
.Lx1230_0:
                        .quad            .Lx1230_0_s
.Lx1230_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n891_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                                                                                        jmp   n892_binop_α
n891_var_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n892_binop_α:
                        mov              eax, dword ptr [rsp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx1232_0
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx1232_0
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rcx, qword ptr [rsp + 1848]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 1712], 6
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n893_assign_var_α
.Lx1232_0:
                        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              rcx, qword ptr [rsp + 1848]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n894_lit_string_α
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                                                                                        jmp   n893_assign_var_α
n892_binop_β:
                                                                                        jmp   n894_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n894_lit_string_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                                                                                        jmp   n894_lit_string_α
n893_assign_var_β:
                                                                                        jmp   n894_lit_string_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1234_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n895_call_α
n894_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1234_0:
                        .quad            .Lx1234_0_s
.Lx1234_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n895_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1236:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1236]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1235_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1235_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n896_assign_α
n895_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n896_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
n896_assign_β:
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n897_goto_α:
                                                                                        jmp   n658_lit_integer_α
n897_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n898_goto_α:
                                                                                        jmp   n899_var_α
n898_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                                                                                        jmp   n900_var_α
n899_var_β:
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                                                                                        jmp   n901_subscript_α
n900_var_β:
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n901_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1242_240
                        add              rsp, 16
                                                                                        jmp   n905_var_α
.Lx1242_240:
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        add              rsp, 16
                                                                                        jmp   n902_deref_α
n901_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n902_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1243_240
                        add              rsp, 16
                                                                                        jmp   n905_var_α
.Lx1243_240:
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        add              rsp, 16
                                                                                        jmp   n903_call_α
n902_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n905_var_α
#-----------------------------------------------------------------------------------------------------------------------
n903_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1245_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1245_5
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1245_6]
                        lea              rdx, [rip + .Lx1245_7]
                                                                                        jmp   rax
.Lx1245_6:
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
                                                                                        jmp   .Lx1245_2
.Lx1245_7:
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
                                                                                        jmp   .Lx1245_2
.Lx1245_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1245_20
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1245_21
.Lx1245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        call             rt_arg_stage@PLT
.Lx1245_21:
                        mov              rdi, qword ptr [rip + .Lx1245_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1245_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1245_3]
                        lea              rdx, [rip + .Lx1245_4]
                                                                                        jmp   rax
.Lx1245_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1245_2
.Lx1245_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1245_2
.Lx1245_1:
                        call             rt_faildescr@PLT
.Lx1245_2:
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n905_var_α
                                                                                        jmp   n904_assign_α
n903_call_β:
                                                                                        jmp   n905_var_α
.Lx1245_0:
                        .quad            .Lx1245_0_s
.Lx1245_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n904_assign_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n905_var_α
n904_assign_β:
                                                                                        jmp   n905_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n905_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n906_lit_integer_α
n905_var_β:
                        add              rsp, 16
                                                                                        jmp   n909_var_α
#-----------------------------------------------------------------------------------------------------------------------
n906_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1248_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n907_binop_α
n906_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n909_var_α
.Lx1248_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n907_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1249_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n909_var_α
.Lx1249_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_assign_α
n907_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n909_var_α
#-----------------------------------------------------------------------------------------------------------------------
n908_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n909_var_α
n908_assign_β:
                        add              rsp, 48
                                                                                        jmp   n909_var_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n909_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                                                                                        jmp   n910_var_α
n909_var_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                                                                                        jmp   n911_subscript_α
n910_var_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n911_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2112]
                        mov              rsi, qword ptr [rsp + 2120]
                        mov              rdx, qword ptr [rsp + 2128]
                        mov              rcx, qword ptr [rsp + 2136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1253_240
                        add              rsp, 16
                                                                                        jmp   n920_lit_string_α
.Lx1253_240:
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        add              rsp, 16
                                                                                        jmp   n912_var_α
n911_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n912_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n913_var_α
n912_var_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n913_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                                                                                        jmp   n914_subscript_α
n913_var_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n914_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1256_240
                        add              rsp, 16
                                                                                        jmp   n920_lit_string_α
.Lx1256_240:
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        add              rsp, 16
                                                                                        jmp   n915_deref_α
n914_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n915_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1257_240
                        add              rsp, 16
                                                                                        jmp   n920_lit_string_α
.Lx1257_240:
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        add              rsp, 16
                                                                                        jmp   n916_call_α
n915_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n916_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1259_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1259_5
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1259_6]
                        lea              rdx, [rip + .Lx1259_7]
                                                                                        jmp   rax
.Lx1259_6:
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
                                                                                        jmp   .Lx1259_2
.Lx1259_7:
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
                                                                                        jmp   .Lx1259_2
.Lx1259_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1259_20
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1259_21
.Lx1259_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        call             rt_arg_stage@PLT
.Lx1259_21:
                        mov              rdi, qword ptr [rip + .Lx1259_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1259_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1259_3]
                        lea              rdx, [rip + .Lx1259_4]
                                                                                        jmp   rax
.Lx1259_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1259_2
.Lx1259_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1259_2
.Lx1259_1:
                        call             rt_faildescr@PLT
.Lx1259_2:
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n920_lit_string_α
                                                                                        jmp   n917_var_α
n916_call_β:
                                                                                        jmp   n920_lit_string_α
.Lx1259_0:
                        .quad            .Lx1259_0_s
.Lx1259_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n917_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                                                                                        jmp   n918_binop_α
n917_var_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n918_binop_α:
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2272]
                        mov              rcx, qword ptr [rsp + 2280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n920_lit_string_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                                                                                        jmp   n919_assign_var_α
n918_binop_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2144]
                        mov              rcx, qword ptr [rsp + 2152]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n920_lit_string_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                                                                                        jmp   n920_lit_string_α
n919_assign_var_β:
                                                                                        jmp   n920_lit_string_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1263_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n921_call_α
n920_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1263_0:
                        .quad            .Lx1263_0_s
.Lx1263_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n921_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1265:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1265]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1264_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1264_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n922_assign_α
n921_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
n922_assign_β:
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n923_goto_α:
                                                                                        jmp   n658_lit_integer_α
n923_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n924_goto_α:
                                                                                        jmp   n925_var_α
n924_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n925_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                                                                                        jmp   n926_var_α
n925_var_β:
                                                                                        jmp   n931_var_α
#-----------------------------------------------------------------------------------------------------------------------
n926_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                                                                                        jmp   n927_subscript_α
n926_var_β:
                                                                                        jmp   n931_var_α
#-----------------------------------------------------------------------------------------------------------------------
n927_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, qword ptr [rsp + 2448]
                        mov              rcx, qword ptr [rsp + 2456]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1271_240
                        add              rsp, 16
                                                                                        jmp   n931_var_α
.Lx1271_240:
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        add              rsp, 16
                                                                                        jmp   n928_deref_α
n927_subscript_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n931_var_α
#-----------------------------------------------------------------------------------------------------------------------
n928_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2464]
                        mov              rsi, qword ptr [rsp + 2472]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1272_240
                        add              rsp, 16
                                                                                        jmp   n931_var_α
.Lx1272_240:
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        add              rsp, 16
                                                                                        jmp   n929_call_α
n928_deref_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n931_var_α
#-----------------------------------------------------------------------------------------------------------------------
n929_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1274_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1274_5
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1274_6]
                        lea              rdx, [rip + .Lx1274_7]
                                                                                        jmp   rax
.Lx1274_6:
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
                                                                                        jmp   .Lx1274_2
.Lx1274_7:
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
                                                                                        jmp   .Lx1274_2
.Lx1274_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1274_20
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1274_21
.Lx1274_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        call             rt_arg_stage@PLT
.Lx1274_21:
                        mov              rdi, qword ptr [rip + .Lx1274_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1274_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1274_3]
                        lea              rdx, [rip + .Lx1274_4]
                                                                                        jmp   rax
.Lx1274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1274_2
.Lx1274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1274_2
.Lx1274_1:
                        call             rt_faildescr@PLT
.Lx1274_2:
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n931_var_α
                                                                                        jmp   n930_assign_α
n929_call_β:
                                                                                        jmp   n931_var_α
.Lx1274_0:
                        .quad            .Lx1274_0_s
.Lx1274_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n930_assign_α:
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n931_var_α
n930_assign_β:
                                                                                        jmp   n931_var_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n931_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n932_lit_integer_α
n931_var_β:
                        add              rsp, 16
                                                                                        jmp   n935_var_α
#-----------------------------------------------------------------------------------------------------------------------
n932_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n933_binop_α
n932_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n935_var_α
.Lx1277_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n933_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1278_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n935_var_α
.Lx1278_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n934_assign_α
n933_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n935_var_α
#-----------------------------------------------------------------------------------------------------------------------
n934_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 48
                                                                                        jmp   n935_var_α
n934_assign_β:
                        add              rsp, 48
                                                                                        jmp   n935_var_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n935_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n936_var_α
n935_var_β:
                        add              rsp, 16
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n936_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n937_subscript_α
n936_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n937_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1282_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n944_var_α
.Lx1282_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n938_deref_α
n937_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n938_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1283_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n944_var_α
.Lx1283_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n939_lit_string_α
n938_deref_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n939_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1284_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n940_call_α
n939_lit_string_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n944_var_α
.Lx1284_0:
                        .quad            .Lx1284_0_s
.Lx1284_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n940_call_α:
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
.Lrkfnzd1286:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1286]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx1285_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n944_var_α
.Lx1285_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96
                                                                                        jmp   n941_var_α
n940_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n944_var_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n941_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n942_unop_α
n941_var_β:
                        add              rsp, 16
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n942_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n943_assign_α
n942_unop_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n943_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 32
                                                                                        jmp   n944_var_α
n943_assign_β:
                        add              rsp, 32
                                                                                        jmp   n944_var_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n945_var_α
n944_var_β:
                        add              rsp, 16
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n946_subscript_α
n945_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n946_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1292_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n949_lit_string_α
.Lx1292_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n947_var_α
n946_subscript_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n947_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n948_assign_var_α
n947_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n948_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx1294_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n949_lit_string_α
.Lx1294_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n949_lit_string_α
n948_assign_var_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n949_lit_string_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1295_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n950_call_α
n949_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1295_0:
                        .quad            .Lx1295_0_s
.Lx1295_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n950_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1297:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1297]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx1296_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
.Lx1296_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n951_assign_α
n950_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n951_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
n951_assign_β:
                        add              rsp, 32
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n952_goto_α:
                                                                                        jmp   n944_var_α
n952_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n953_goto_α:
                                                                                        jmp   n658_lit_integer_α
n953_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n954_goto_α:
                                                                                        jmp   n712_var_α
n954_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n955_goto_α:
                                                                                        jmp   n744_var_α
n955_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n956_goto_α:
                                                                                        jmp   n764_call_α
n956_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4816]
                        add              rsp, 4824
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4816]
                        add              rsp, 4824
                        ret
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
