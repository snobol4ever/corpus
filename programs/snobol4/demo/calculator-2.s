                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
                        .global          proc_EMIT_α
                        .global          proc_EMIT_β
                        .global          proc_EMIT_γ
                        .global          proc_EMIT_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_EMIT_α_body:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n3_subscript_α
.Lx14_0:
                        .quad            1
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n4_assign_α
.Lx15_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n2_lit_integer_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n5_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n2_lit_integer_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n7_call_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n8_call_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx21_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx21_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_6]
                        lea              rdx, [rip + .Lx21_7]
                                                                                        jmp   rax
.Lx21_6:
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
                                                                                        jmp   .Lx21_2
.Lx21_7:
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
                                                                                        jmp   .Lx21_2
.Lx21_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx21_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx21_21
.Lx21_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx21_21:
                        mov              rdi, qword ptr [rip + .Lx21_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx21_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_3]
                        lea              rdx, [rip + .Lx21_4]
                                                                                        jmp   rax
.Lx21_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx21_2
.Lx21_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx21_2
.Lx21_1:
                        call             rt_faildescr@PLT
.Lx21_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n2_lit_integer_α
                                                                                        jmp   n9_assign_α
n7_call_β:
                                                                                        jmp   n2_lit_integer_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn23:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n10_assign_α
n8_call_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rdi, qword ptr [rip + .Lx24_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n2_lit_integer_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n12_call_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn28:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_EMIT_ω
                                                                                        jmp   proc_EMIT_γ
n12_call_β:
                                                                                        jmp   proc_EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_β:
                                                                                        jmp   proc_EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 424]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
                        .global          proc_PSH_α
                        .global          proc_PSH_β
                        .global          proc_PSH_γ
                        .global          proc_PSH_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_PSH_α_body:
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n32_binop_α
.Lx40_0:
                        .quad            1
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 100
                                                                                        je    .Lx42_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx42_2
.Lx42_1:
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n35_assign_α
.Lx42_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        lea              r9, [rbp + 112]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n35_assign_α
.Lx42_2:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n31_var_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n35_assign_α
n32_binop_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n36_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n37_call_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_lit_string_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn48:               .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_PSH_ω
                                                                                        jmp   proc_PSH_γ
n37_call_β:
                                                                                        jmp   proc_PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_β:
                                                                                        jmp   proc_PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
                        .global          proc_DRF_α
                        .global          proc_DRF_β
                        .global          proc_DRF_γ
                        .global          proc_DRF_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_DRF_α_body:
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n51_match_head_α
n50_var_β:
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_head_α:
                        mov              qword ptr [rbp + 152], rbp
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 144], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx68_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n53_match_sequence_α
n51_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx68_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx68_1
                                                                                        jmp   .Lx68_0
.Lx68_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   n52_var_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n54_assign_α
n52_var_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
n53_match_sequence_α:
                                                                                        jmp   n56_lit_integer_α
n53_match_sequence_as:
                                                                                        jmp   n55_match_release_α
n53_match_sequence_β:
                                                                                        jmp   n60_match_rpos_β
n53_match_sequence_af:
                                                                                        jmp   n51_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   proc_DRF_γ
n54_assign_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
n55_match_release_α:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx74_1:
                        test             rax, rax
                                                                                        je    .Lx74_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx74_3]
                        lea              rdx, [rip + .Lx74_4]
                                                                                        jmp   rax
.Lx74_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx74_1
.Lx74_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx74_1
.Lx74_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n57_match_pos_α
n56_lit_integer_β:
                                                                                        jmp   n51_match_head_β
.Lx75_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n51_match_head_β
                                                                                        jmp   n58_match_any_α
n57_match_pos_β:
                                                                                        jmp   n51_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n51_match_head_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n51_match_head_β
                        add              r14d, 1
                                                                                        jmp   n59_lit_integer_α
n58_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n51_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n60_match_rpos_α
n59_lit_integer_β:
                                                                                        jmp   n58_match_any_β
.Lx79_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n60_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n58_match_any_β
                                                                                        jmp   n55_match_release_α
n60_match_rpos_β:
                                                                                        jmp   n58_match_any_β
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n62_var_α
n61_var_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n63_subscript_α
n62_var_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_DRF_γ
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n64_deref_α
n63_subscript_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_DRF_γ
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n65_assign_α
n64_deref_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   proc_DRF_γ
n65_assign_β:
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_β:
                                                                                        jmp   proc_DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 472]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
                        .global          proc_ADD_α
                        .global          proc_ADD_β
                        .global          proc_ADD_γ
                        .global          proc_ADD_ω
                        sub              rsp, 848
                        mov              [rsp + 824], rcx
                        mov              [rsp + 832], rdx
                        mov              [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_ADD_α_body:
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n89_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n92_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n93_binop_α
.Lx116_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n96_call_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx119_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx119_2
.Lx119_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n97_assign_α
.Lx119_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n97_assign_α
.Lx119_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n91_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n97_assign_α
n93_binop_β:
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n98_subscript_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n99_call_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx123_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx123_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx123_6]
                        lea              rdx, [rip + .Lx123_7]
                                                                                        jmp   rax
.Lx123_6:
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
                                                                                        jmp   .Lx123_2
.Lx123_7:
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
                                                                                        jmp   .Lx123_2
.Lx123_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx123_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx123_21
.Lx123_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx123_21:
                        mov              rdi, qword ptr [rip + .Lx123_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx123_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx123_3]
                        lea              rdx, [rip + .Lx123_4]
                                                                                        jmp   rax
.Lx123_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx123_2
.Lx123_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx123_2
.Lx123_1:
                        call             rt_faildescr@PLT
.Lx123_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n88_var_α
                                                                                        jmp   n100_assign_α
n96_call_β:
                                                                                        jmp   n88_var_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn127:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n103_lit_string_α
                                                                                        jmp   n102_assign_α
n99_call_β:
                                                                                        jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n105_call_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n106_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn134:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_ADD_ω
                                                                                        jmp   proc_ADD_γ
n105_call_β:
                                                                                        jmp   proc_ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n107_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n107_deref_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx138_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_6]
                        lea              rdx, [rip + .Lx138_7]
                                                                                        jmp   rax
.Lx138_6:
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
                                                                                        jmp   .Lx138_2
.Lx138_7:
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
                                                                                        jmp   .Lx138_2
.Lx138_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx138_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx138_21
.Lx138_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx138_21:
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx138_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_3]
                        lea              rdx, [rip + .Lx138_4]
                                                                                        jmp   rax
.Lx138_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx138_2
.Lx138_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx138_2
.Lx138_1:
                        call             rt_faildescr@PLT
.Lx138_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n109_var_α
n108_call_β:
                                                                                        jmp   n95_lit_string_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n110_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx140_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx140_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx140_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx140_2
.Lx140_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        add              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n111_assign_var_α
.Lx140_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 0
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n111_assign_var_α
.Lx140_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n111_assign_var_α
n110_binop_β:
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_var_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_β:
                                                                                        jmp   proc_ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 824]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                        mov              rax, [rbp + 832]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
                        .global          proc_SUB_α
                        .global          proc_SUB_β
                        .global          proc_SUB_γ
                        .global          proc_SUB_ω
                        sub              rsp, 848
                        mov              [rsp + 824], rcx
                        mov              [rsp + 832], rdx
                        mov              [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_SUB_α_body:
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n145_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n144_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n148_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n149_binop_α
.Lx172_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n144_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n152_call_α
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx175_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx175_2
.Lx175_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n153_assign_α
.Lx175_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n153_assign_α
.Lx175_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n147_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n153_assign_α
n149_binop_β:
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n154_subscript_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n155_call_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n152_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx179_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx179_6]
                        lea              rdx, [rip + .Lx179_7]
                                                                                        jmp   rax
.Lx179_6:
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
                                                                                        jmp   .Lx179_2
.Lx179_7:
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
                                                                                        jmp   .Lx179_2
.Lx179_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx179_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx179_21
.Lx179_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx179_21:
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx179_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx179_3]
                        lea              rdx, [rip + .Lx179_4]
                                                                                        jmp   rax
.Lx179_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_1:
                        call             rt_faildescr@PLT
.Lx179_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n144_var_α
                                                                                        jmp   n156_assign_α
n152_call_β:
                                                                                        jmp   n144_var_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn183:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n159_lit_string_α
                                                                                        jmp   n158_assign_α
n155_call_β:
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n161_call_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n162_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn190:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_SUB_ω
                                                                                        jmp   proc_SUB_γ
n161_call_β:
                                                                                        jmp   proc_SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n163_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_deref_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n164_call_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx194_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx194_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx194_6]
                        lea              rdx, [rip + .Lx194_7]
                                                                                        jmp   rax
.Lx194_6:
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
                                                                                        jmp   .Lx194_2
.Lx194_7:
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
                                                                                        jmp   .Lx194_2
.Lx194_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx194_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx194_21
.Lx194_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx194_21:
                        mov              rdi, qword ptr [rip + .Lx194_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx194_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx194_3]
                        lea              rdx, [rip + .Lx194_4]
                                                                                        jmp   rax
.Lx194_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx194_2
.Lx194_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx194_2
.Lx194_1:
                        call             rt_faildescr@PLT
.Lx194_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                                                                                        jmp   n165_var_α
n164_call_β:
                                                                                        jmp   n151_lit_string_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n166_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx196_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx196_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx196_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx196_2
.Lx196_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n167_assign_var_α
.Lx196_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 1
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n167_assign_var_α
.Lx196_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n167_assign_var_α
n166_binop_β:
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_var_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_β:
                                                                                        jmp   proc_SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 824]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                        mov              rax, [rbp + 832]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
                        .global          proc_MUL_α
                        .global          proc_MUL_β
                        .global          proc_MUL_γ
                        .global          proc_MUL_ω
                        sub              rsp, 848
                        mov              [rsp + 824], rcx
                        mov              [rsp + 832], rdx
                        mov              [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_MUL_α_body:
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n201_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n200_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n204_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n205_binop_α
.Lx228_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n206_var_α
#-----------------------------------------------------------------------------------------------------------------------
n204_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n200_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n208_call_α
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx231_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx231_2
.Lx231_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n209_assign_α
.Lx231_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n209_assign_α
.Lx231_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n203_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n209_assign_α
n205_binop_β:
                                                                                        jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n210_subscript_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n211_call_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx235_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_6]
                        lea              rdx, [rip + .Lx235_7]
                                                                                        jmp   rax
.Lx235_6:
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
                                                                                        jmp   .Lx235_2
.Lx235_7:
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
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n200_var_α
                                                                                        jmp   n212_assign_α
n208_call_β:
                                                                                        jmp   n200_var_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n210_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n213_var_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn239:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n215_lit_string_α
                                                                                        jmp   n214_assign_α
n211_call_β:
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n200_var_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n217_call_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n218_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn246:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_MUL_ω
                                                                                        jmp   proc_MUL_γ
n217_call_β:
                                                                                        jmp   proc_MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
n218_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n219_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n219_deref_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n220_call_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx250_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx250_6]
                        lea              rdx, [rip + .Lx250_7]
                                                                                        jmp   rax
.Lx250_6:
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
                                                                                        jmp   .Lx250_2
.Lx250_7:
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
                                                                                        jmp   .Lx250_2
.Lx250_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx250_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx250_21
.Lx250_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx250_21:
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx250_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx250_3]
                        lea              rdx, [rip + .Lx250_4]
                                                                                        jmp   rax
.Lx250_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx250_2
.Lx250_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx250_2
.Lx250_1:
                        call             rt_faildescr@PLT
.Lx250_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n221_var_α
n220_call_β:
                                                                                        jmp   n207_lit_string_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n222_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx252_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx252_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx252_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx252_2
.Lx252_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n223_assign_var_α
.Lx252_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 2
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n223_assign_var_α
.Lx252_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n223_assign_var_α
n222_binop_β:
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_var_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_β:
                                                                                        jmp   proc_MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 824]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                        mov              rax, [rbp + 832]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
                        .global          proc_DIV_α
                        .global          proc_DIV_β
                        .global          proc_DIV_γ
                        .global          proc_DIV_ω
                        sub              rsp, 848
                        mov              [rsp + 824], rcx
                        mov              [rsp + 832], rdx
                        mov              [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_DIV_α_body:
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n255_var_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n257_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n258_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n257_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n256_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n260_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n261_binop_α
.Lx284_0:
                        .quad            1
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n260_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n256_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n264_call_α
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx287_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx287_2
.Lx287_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n265_assign_α
.Lx287_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n265_assign_α
.Lx287_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n259_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n265_assign_α
n261_binop_β:
                                                                                        jmp   n259_var_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n266_subscript_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n267_call_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx291_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx291_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_6]
                        lea              rdx, [rip + .Lx291_7]
                                                                                        jmp   rax
.Lx291_6:
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
                                                                                        jmp   .Lx291_2
.Lx291_7:
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
                                                                                        jmp   .Lx291_2
.Lx291_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx291_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx291_21
.Lx291_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx291_21:
                        mov              rdi, qword ptr [rip + .Lx291_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx291_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_1:
                        call             rt_faildescr@PLT
.Lx291_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n256_var_α
                                                                                        jmp   n268_assign_α
n264_call_β:
                                                                                        jmp   n256_var_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n259_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_lit_string_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn295:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n270_assign_α
n267_call_β:
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n256_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n273_call_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n274_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn302:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_DIV_ω
                                                                                        jmp   proc_DIV_γ
n273_call_β:
                                                                                        jmp   proc_DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
n274_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_lit_string_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n275_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_deref_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n263_lit_string_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n276_call_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx306_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx306_5
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx306_6]
                        lea              rdx, [rip + .Lx306_7]
                                                                                        jmp   rax
.Lx306_6:
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
                                                                                        jmp   .Lx306_2
.Lx306_7:
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
                                                                                        jmp   .Lx306_2
.Lx306_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx306_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx306_21
.Lx306_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx306_21:
                        mov              rdi, qword ptr [rip + .Lx306_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx306_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx306_3]
                        lea              rdx, [rip + .Lx306_4]
                                                                                        jmp   rax
.Lx306_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx306_2
.Lx306_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx306_2
.Lx306_1:
                        call             rt_faildescr@PLT
.Lx306_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n263_lit_string_α
                                                                                        jmp   n277_var_α
n276_call_β:
                                                                                        jmp   n263_lit_string_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n278_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx308_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 100
                                                                                        je    .Lx308_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx308_2
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx308_2
.Lx308_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 680]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n279_assign_var_α
.Lx308_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 3
                        lea              r9, [rbp + 480]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n279_assign_var_α
.Lx308_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n263_lit_string_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n279_assign_var_α
n278_binop_β:
                                                                                        jmp   n263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_var_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n263_lit_string_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_β:
                                                                                        jmp   proc_DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 824]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                        mov              rax, [rbp + 832]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SGN_α
proc_SGN_α:
                        .global          proc_SGN_α
                        .global          proc_SGN_β
                        .global          proc_SGN_γ
                        .global          proc_SGN_ω
                        sub              rsp, 944
                        mov              [rsp + 920], rcx
                        mov              [rsp + 928], rdx
                        mov              [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_SGN_α_body:
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n313_subscript_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n314_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n313_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n312_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n316_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n317_binop_α
.Lx343_0:
                        .quad            1
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n312_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n320_call_α
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx346_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx346_2
.Lx346_1:
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n321_assign_α
.Lx346_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        lea              r9, [rbp + 288]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n321_assign_α
.Lx346_2:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n315_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n321_assign_α
n317_binop_β:
                                                                                        jmp   n315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n322_subscript_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx350_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx350_5
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx350_6]
                        lea              rdx, [rip + .Lx350_7]
                                                                                        jmp   rax
.Lx350_6:
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
                                                                                        jmp   .Lx350_2
.Lx350_7:
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
                                                                                        jmp   .Lx350_2
.Lx350_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx350_21
.Lx350_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx350_21:
                        mov              rdi, qword ptr [rip + .Lx350_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx350_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx350_3]
                        lea              rdx, [rip + .Lx350_4]
                                                                                        jmp   rax
.Lx350_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_1:
                        call             rt_faildescr@PLT
.Lx350_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n312_var_α
                                                                                        jmp   n325_assign_α
n320_call_β:
                                                                                        jmp   n312_var_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n319_var_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n326_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n327_subscript_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n328_call_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n326_deref_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n319_var_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n324_lit_string_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n330_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn359:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n332_lit_string_α
                                                                                        jmp   n331_assign_α
n328_call_β:
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n333_call_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n334_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 16], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n335_call_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn365:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n319_var_α
                                                                                        jmp   n336_var_α
n333_call_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_var_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n324_lit_string_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn368:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_SGN_ω
                                                                                        jmp   proc_SGN_γ
n335_call_β:
                                                                                        jmp   proc_SGN_ω
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n337_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n337_unop_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_β:
                                                                                        jmp   proc_SGN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 920]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_ω:
                        mov              rax, [rbp + 928]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
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
                        mov              qword ptr [rbp + 96], r8
                        mov              dword ptr [rbp + 88], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n374_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n372_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n373_match_any_α
n372_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n373_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx378_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx378_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx378_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx378_240:
                        add              r14d, 1
                                                                                        jmp   n374_match_assign_cond_α
n373_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n374_match_assign_cond_α:
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
n374_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n373_match_any_β
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
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rbp + 112], r8
                        mov              dword ptr [rbp + 104], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n383_match_assign_cond_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n381_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n382_match_span_α
n381_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n382_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx387_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx387_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx387_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx387_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx387_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx387_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx387_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx387_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx387_1
                        add              ecx, 1
                                                                                        jmp   .Lx387_0
.Lx387_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx387_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx387_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n383_match_assign_cond_α
n382_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n383_match_assign_cond_α:
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
n383_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n382_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
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
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
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
                        mov              qword ptr [rbp + 128], r8
                        mov              dword ptr [rbp + 120], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n390_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n391_match_defer_α
n390_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n390_match_alternate_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                                                                                        je    n391_match_defer_β
                        cmp              eax, 1
                                                                                        je    n392_match_defer_β
                                                                                        jmp   n393_match_sequence_β
n390_match_alternate_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                                                                                        je    n392_match_defer_α
                        cmp              eax, 2
                                                                                        je    n393_match_sequence_α
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n391_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx399_11
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 3
                                                                                        jne   .Lx399_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx399_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx399_10
.Lx399_9:
                        xor              eax, eax
.Lx399_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx399_11:
                        test             rax, rax
                                                                                        jz    .Lx399_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx399_4]
                        lea              rdx, [rip + .Lx399_5]
                                                                                        jmp   rax
.Lx399_4:
                                                                                        jmp   n390_match_alternate_as
.Lx399_5:
                                                                                        jmp   n390_match_alternate_af
.Lx399_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx399_2:
                        test             rax, rax
                                                                                        je    .Lx399_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx399_7]
                        lea              rdx, [rip + .Lx399_8]
                                                                                        jmp   rax
.Lx399_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx399_2
.Lx399_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx399_2
.Lx399_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n390_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx399_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n390_match_alternate_as
.Lx399_6:
                        add              rsp, 16
                                                                                        jmp   n390_match_alternate_af
n391_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n392_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx400_11
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 3
                                                                                        jne   .Lx400_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx400_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx400_10
.Lx400_9:
                        xor              eax, eax
.Lx400_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx400_11:
                        test             rax, rax
                                                                                        jz    .Lx400_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx400_4]
                        lea              rdx, [rip + .Lx400_5]
                                                                                        jmp   rax
.Lx400_4:
                                                                                        jmp   n390_match_alternate_as
.Lx400_5:
                                                                                        jmp   n390_match_alternate_af
.Lx400_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx400_2:
                        test             rax, rax
                                                                                        je    .Lx400_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx400_7]
                        lea              rdx, [rip + .Lx400_8]
                                                                                        jmp   rax
.Lx400_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx400_2
.Lx400_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx400_2
.Lx400_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n390_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx400_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n390_match_alternate_as
.Lx400_6:
                        add              rsp, 16
                                                                                        jmp   n390_match_alternate_af
n392_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n393_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n394_match_lit_α
n393_match_sequence_as:
                                                                                        jmp   n390_match_alternate_as
n393_match_sequence_β:
                                                                                        jmp   n396_match_lit_β
n393_match_sequence_af:
                                                                                        jmp   n390_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n394_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n390_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n390_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n395_match_defer_α
n394_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n390_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n395_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx405_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx405_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx405_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx405_10
.Lx405_9:
                        xor              eax, eax
.Lx405_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx405_11:
                        test             rax, rax
                                                                                        jz    .Lx405_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx405_4]
                        lea              rdx, [rip + .Lx405_5]
                                                                                        jmp   rax
.Lx405_4:
                                                                                        jmp   n396_match_lit_α
.Lx405_5:
                                                                                        jmp   n394_match_lit_β
.Lx405_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx405_2:
                        test             rax, rax
                                                                                        je    .Lx405_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx405_7]
                        lea              rdx, [rip + .Lx405_8]
                                                                                        jmp   rax
.Lx405_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx405_2
.Lx405_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx405_2
.Lx405_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n394_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx405_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n396_match_lit_α
.Lx405_6:
                        add              rsp, 16
                                                                                        jmp   n394_match_lit_β
n395_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n396_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n395_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n395_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n390_match_alternate_as
n396_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n395_match_defer_β
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 112]
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
                        mov              qword ptr [rbp + 224], r8
                        mov              dword ptr [rbp + 216], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n408_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        mov              dword ptr [rbp + 20], 0
                                                                                        jmp   n409_match_defer_α
n408_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n408_match_alternate_β:
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 0
                                                                                        je    n409_match_defer_β
                                                                                        jmp   n410_match_sequence_β
n408_match_alternate_af:
                        add              dword ptr [rbp + 20], 1
                        mov              r14d, dword ptr [rbp + 16]
                        mov              eax, dword ptr [rbp + 20]
                        cmp              eax, 1
                                                                                        je    n410_match_sequence_α
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_match_defer_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 3
                                                                                        jne   .Lx419_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx419_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx419_10
.Lx419_9:
                        xor              eax, eax
.Lx419_10:
                        test             rax, rax
                                                                                        jz    .Lx419_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx419_4]
                        lea              rdx, [rip + .Lx419_5]
                                                                                        jmp   rax
.Lx419_4:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n408_match_alternate_as
.Lx419_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n408_match_alternate_af
.Lx419_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx419_2:
                        test             rax, rax
                                                                                        je    .Lx419_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx419_7]
                        lea              rdx, [rip + .Lx419_8]
                                                                                        jmp   rax
.Lx419_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx419_2
.Lx419_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx419_2
.Lx419_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n408_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx419_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n408_match_alternate_as
.Lx419_6:
                        add              rsp, 16
                                                                                        jmp   n408_match_alternate_af
n409_match_defer_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n408_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n410_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n411_match_assign_save_α
n410_match_sequence_as:
                                                                                        jmp   n408_match_alternate_as
n410_match_sequence_β:
                                                                                        jmp   n414_match_assign_cond_β
n410_match_sequence_af:
                                                                                        jmp   n408_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n411_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n415_match_any_α
n411_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n408_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n412_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n413_match_assign_save_α
n412_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n415_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n413_match_assign_save_α:
                        lea              rdi, [rbp + 160]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n416_match_defer_α
n413_match_assign_save_β:
                        lea              rdi, [rbp + 160]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n412_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n414_match_assign_cond_α:
                        lea              rdi, [rbp + 160]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n408_match_alternate_as
n414_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n416_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n415_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx431_240
                        add              rsp, 16
                                                                                        jmp   n408_match_alternate_af
.Lx431_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx431_0
                        cmp              esi, 45
                                                                                        je    .Lx431_0
                        add              rsp, 16
                                                                                        jmp   n408_match_alternate_af
.Lx431_0:
                        add              r14d, 1
                                                                                        jmp   n412_match_assign_cond_α
n415_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n408_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n416_match_defer_α:
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx432_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx432_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx432_10
.Lx432_9:
                        xor              eax, eax
.Lx432_10:
                        test             rax, rax
                                                                                        jz    .Lx432_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx432_4]
                        lea              rdx, [rip + .Lx432_5]
                                                                                        jmp   rax
.Lx432_4:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n414_match_assign_cond_α
.Lx432_5:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n413_match_assign_save_β
.Lx432_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx432_2:
                        test             rax, rax
                                                                                        je    .Lx432_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx432_7]
                        lea              rdx, [rip + .Lx432_8]
                                                                                        jmp   rax
.Lx432_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx432_2
.Lx432_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx432_2
.Lx432_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n413_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx432_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n414_match_assign_cond_α
.Lx432_6:
                        add              rsp, 16
                                                                                        jmp   n413_match_assign_save_β
n416_match_defer_β:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n413_match_assign_save_β
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
                        mov              qword ptr [rbp + 352], r8
                        mov              dword ptr [rbp + 344], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n433_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n433_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n434_match_defer_α
n433_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n433_match_sequence_β:
                                                                                        jmp   n435_match_arbno_β
n433_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n434_match_defer_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx449_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx449_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx449_10
.Lx449_9:
                        xor              eax, eax
.Lx449_10:
                        test             rax, rax
                                                                                        jz    .Lx449_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx449_4]
                        lea              rdx, [rip + .Lx449_5]
                                                                                        jmp   rax
.Lx449_4:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n435_match_arbno_α
.Lx449_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
.Lx449_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx449_2:
                        test             rax, rax
                                                                                        je    .Lx449_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx449_7]
                        lea              rdx, [rip + .Lx449_8]
                                                                                        jmp   rax
.Lx449_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx449_2
.Lx449_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx449_2
.Lx449_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx449_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n435_match_arbno_α
.Lx449_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n434_match_defer_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   proc_PAT$4_γ
n435_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n436_match_alternate_α
n435_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n436_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   proc_PAT$4_γ
n435_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx451_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n436_match_alternate_β
.Lx451_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n434_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n436_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], 0
                                                                                        jmp   n438_match_sequence_α
n436_match_alternate_as:
                                                                                        jmp   n435_match_arbno_as
n436_match_alternate_β:
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 0
                                                                                        je    n438_match_sequence_β
                                                                                        jmp   n439_match_sequence_β
n436_match_alternate_af:
                        add              dword ptr [rbp + 116], 1
                        mov              r14d, dword ptr [rbp + 112]
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 1
                                                                                        je    n439_match_sequence_α
                                                                                        jmp   n435_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n437_match_defer_α:
                        mov              qword ptr [rbp + 320], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx454_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx454_10
.Lx454_9:
                        xor              eax, eax
.Lx454_10:
                        test             rax, rax
                                                                                        jz    .Lx454_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx454_4]
                        lea              rdx, [rip + .Lx454_5]
                                                                                        jmp   rax
.Lx454_4:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n440_match_assign_cond_α
.Lx454_5:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n441_match_assign_save_β
.Lx454_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx454_2:
                        test             rax, rax
                                                                                        je    .Lx454_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx454_7]
                        lea              rdx, [rip + .Lx454_8]
                                                                                        jmp   rax
.Lx454_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx454_2
.Lx454_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx454_2
.Lx454_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n441_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx454_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n440_match_assign_cond_α
.Lx454_6:
                        add              rsp, 16
                                                                                        jmp   n441_match_assign_save_β
n437_match_defer_β:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n441_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n438_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n442_match_lit_α
n438_match_sequence_as:
                                                                                        jmp   n436_match_alternate_as
n438_match_sequence_β:
                                                                                        jmp   n444_match_assign_cond_β
n438_match_sequence_af:
                                                                                        jmp   n436_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n439_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n445_match_lit_α
n439_match_sequence_as:
                                                                                        jmp   n436_match_alternate_as
n439_match_sequence_β:
                                                                                        jmp   n440_match_assign_cond_β
n439_match_sequence_af:
                                                                                        jmp   n436_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n440_match_assign_cond_α:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n436_match_alternate_as
n440_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n437_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n441_match_assign_save_α:
                        lea              rdi, [rbp + 288]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n437_match_defer_α
n441_match_assign_save_β:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n445_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n442_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n436_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n436_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n443_match_assign_save_α
n442_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n436_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n443_match_assign_save_α:
                        lea              rdi, [rbp + 192]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n446_match_defer_α
n443_match_assign_save_β:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n442_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n444_match_assign_cond_α:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n436_match_alternate_as
n444_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n446_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n445_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n436_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n436_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n441_match_assign_save_α
n445_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n436_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n446_match_defer_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 3
                                                                                        jne   .Lx471_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx471_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx471_10
.Lx471_9:
                        xor              eax, eax
.Lx471_10:
                        test             rax, rax
                                                                                        jz    .Lx471_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx471_4]
                        lea              rdx, [rip + .Lx471_5]
                                                                                        jmp   rax
.Lx471_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n444_match_assign_cond_α
.Lx471_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n443_match_assign_save_β
.Lx471_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx471_2:
                        test             rax, rax
                                                                                        je    .Lx471_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx471_7]
                        lea              rdx, [rip + .Lx471_8]
                                                                                        jmp   rax
.Lx471_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx471_2
.Lx471_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx471_2
.Lx471_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n443_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx471_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n444_match_assign_cond_α
.Lx471_6:
                        add              rsp, 16
                                                                                        jmp   n443_match_assign_save_β
n446_match_defer_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n443_match_assign_save_β
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 336]
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
                        mov              qword ptr [rbp + 352], r8
                        mov              dword ptr [rbp + 344], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + n472_match_sequence_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n472_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n473_match_defer_α
n472_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n472_match_sequence_β:
                                                                                        jmp   n474_match_arbno_β
n472_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx488_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx488_10
.Lx488_9:
                        xor              eax, eax
.Lx488_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx488_11:
                        test             rax, rax
                                                                                        jz    .Lx488_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx488_4]
                        lea              rdx, [rip + .Lx488_5]
                                                                                        jmp   rax
.Lx488_4:
                                                                                        jmp   n474_match_arbno_α
.Lx488_5:
                                                                                        jmp   proc_PAT$5_ω
.Lx488_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx488_2:
                        test             rax, rax
                                                                                        je    .Lx488_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx488_7]
                        lea              rdx, [rip + .Lx488_8]
                                                                                        jmp   rax
.Lx488_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx488_2
.Lx488_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx488_2
.Lx488_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx488_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n474_match_arbno_α
.Lx488_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n473_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n474_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   proc_PAT$5_γ
n474_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n475_match_alternate_α
n474_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n475_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   proc_PAT$5_γ
n474_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 344]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx490_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n475_match_alternate_β
.Lx490_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n473_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n475_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], 0
                                                                                        jmp   n477_match_sequence_α
n475_match_alternate_as:
                                                                                        jmp   n474_match_arbno_as
n475_match_alternate_β:
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 0
                                                                                        je    n477_match_sequence_β
                                                                                        jmp   n478_match_sequence_β
n475_match_alternate_af:
                        add              dword ptr [rbp + 116], 1
                        mov              r14d, dword ptr [rbp + 112]
                        mov              eax, dword ptr [rbp + 116]
                        cmp              eax, 1
                                                                                        je    n478_match_sequence_α
                                                                                        jmp   n474_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n476_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx493_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx493_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx493_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx493_10
.Lx493_9:
                        xor              eax, eax
.Lx493_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx493_11:
                        test             rax, rax
                                                                                        jz    .Lx493_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx493_4]
                        lea              rdx, [rip + .Lx493_5]
                                                                                        jmp   rax
.Lx493_4:
                                                                                        jmp   n479_match_assign_cond_α
.Lx493_5:
                                                                                        jmp   n480_match_assign_save_β
.Lx493_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx493_2:
                        test             rax, rax
                                                                                        je    .Lx493_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx493_7]
                        lea              rdx, [rip + .Lx493_8]
                                                                                        jmp   rax
.Lx493_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx493_2
.Lx493_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx493_2
.Lx493_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n480_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx493_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n479_match_assign_cond_α
.Lx493_6:
                        add              rsp, 16
                                                                                        jmp   n480_match_assign_save_β
n476_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n477_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n481_match_lit_α
n477_match_sequence_as:
                                                                                        jmp   n475_match_alternate_as
n477_match_sequence_β:
                                                                                        jmp   n483_match_assign_cond_β
n477_match_sequence_af:
                                                                                        jmp   n475_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n478_match_sequence_α:
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n484_match_lit_α
n478_match_sequence_as:
                                                                                        jmp   n475_match_alternate_as
n478_match_sequence_β:
                                                                                        jmp   n479_match_assign_cond_β
n478_match_sequence_af:
                                                                                        jmp   n475_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n479_match_assign_cond_α:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n475_match_alternate_as
n479_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n476_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n480_match_assign_save_α:
                        lea              rdi, [rbp + 288]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n476_match_defer_α
n480_match_assign_save_β:
                        lea              rdi, [rbp + 288]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n484_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n481_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n475_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n475_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n482_match_assign_save_α
n481_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n475_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n482_match_assign_save_α:
                        lea              rdi, [rbp + 192]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n485_match_defer_α
n482_match_assign_save_β:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n481_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n483_match_assign_cond_α:
                        lea              rdi, [rbp + 192]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n475_match_alternate_as
n483_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n485_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n484_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n475_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n475_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n480_match_assign_save_α
n484_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n475_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n485_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx510_11
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 3
                                                                                        jne   .Lx510_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx510_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx510_10
.Lx510_9:
                        xor              eax, eax
.Lx510_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx510_11:
                        test             rax, rax
                                                                                        jz    .Lx510_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx510_4]
                        lea              rdx, [rip + .Lx510_5]
                                                                                        jmp   rax
.Lx510_4:
                                                                                        jmp   n483_match_assign_cond_α
.Lx510_5:
                                                                                        jmp   n482_match_assign_save_β
.Lx510_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx510_2
.Lx510_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx510_2
.Lx510_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n482_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx510_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n483_match_assign_cond_α
.Lx510_6:
                        add              rsp, 16
                                                                                        jmp   n482_match_assign_save_β
n485_match_defer_β:
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
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 336]
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
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n512_call_α
.Lx515_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lbynamefn224:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn224]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_PAT$6_scanfail
                                                                                        jmp   n513_match_value_α
n512_call_β:
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n513_match_value_α:
                        lea              rdi, [rbp + 48]
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx517_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx517_4]
                        lea              rdx, [rip + .Lx517_5]
                                                                                        jmp   rax
.Lx517_4:
                                                                                        jmp   n514_match_fence1_α
.Lx517_5:
                                                                                        jmp   proc_PAT$6_scanfail
.Lx517_0:
                        lea              rdi, [rbp + 48]
                        call             rt_match_value_open@PLT
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx517_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n514_match_fence1_α
.Lx517_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
n513_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n514_match_fence1_α:
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_scanhit
n514_match_fence1_β:
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
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
                                                                                        jmp   proc_PAT$6_attempt
8:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        .global          proc_PAT$7_α
                        .global          proc_PAT$7_β
                        .global          proc_PAT$7_γ
                        .global          proc_PAT$7_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rbp + 320], r8
                        mov              dword ptr [rbp + 312], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n520_match_sequence_β]
                        mov              qword ptr [rbp + 304], rax
#-----------------------------------------------------------------------------------------------------------------------
n520_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n521_lit_integer_α
n520_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n520_match_sequence_β:
                                                                                        jmp   n525_match_rpos_β
n520_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n522_match_pos_α
n521_lit_integer_β:
                                                                                        jmp   proc_PAT$7_ω
.Lx534_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n522_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$7_ω
                                                                                        jmp   n523_match_arbno_α
n522_match_pos_β:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n523_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n524_lit_integer_α
n523_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -104
                                                                                        jmp   n526_match_sequence_α
n523_match_arbno_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              r14d, eax
                                                                                        je    n526_match_sequence_β
                        mov              rbp, qword ptr [rbp + 104]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n524_lit_integer_α
n523_match_arbno_af:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 280]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx537_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -104]
                                                                                        jmp   n526_match_sequence_β
.Lx537_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n522_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n525_match_rpos_α
n524_lit_integer_β:
                                                                                        jmp   n523_match_arbno_β
.Lx538_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n525_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n523_match_arbno_β
                                                                                        jmp   proc_PAT$7_γ
n525_match_rpos_β:
                                                                                        jmp   n523_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n526_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n528_match_defer_α
n526_match_sequence_as:
                                                                                        jmp   n523_match_arbno_as
n526_match_sequence_β:
                                                                                        jmp   n531_match_assign_cond_β
n526_match_sequence_af:
                                                                                        jmp   n523_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n527_match_defer_α:
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx542_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx542_4]
                        lea              rdx, [rip + .Lx542_5]
                                                                                        jmp   rax
.Lx542_4:
                                                                                        jmp   n531_match_assign_cond_α
.Lx542_5:
                                                                                        jmp   n530_match_assign_save_β
.Lx542_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx542_2:
                        test             rax, rax
                                                                                        je    .Lx542_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx542_7]
                        lea              rdx, [rip + .Lx542_8]
                                                                                        jmp   rax
.Lx542_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx542_2
.Lx542_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx542_2
.Lx542_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n530_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx542_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n531_match_assign_cond_α
.Lx542_6:
                        add              rsp, 16
                                                                                        jmp   n530_match_assign_save_β
n527_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n528_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx543_11
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 3
                                                                                        jne   .Lx543_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx543_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx543_10
.Lx543_9:
                        xor              eax, eax
.Lx543_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx543_11:
                        test             rax, rax
                                                                                        jz    .Lx543_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx543_4]
                        lea              rdx, [rip + .Lx543_5]
                                                                                        jmp   rax
.Lx543_4:
                                                                                        jmp   n529_match_defer_α
.Lx543_5:
                                                                                        jmp   n523_match_arbno_af
.Lx543_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx543_2:
                        test             rax, rax
                                                                                        je    .Lx543_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx543_7]
                        lea              rdx, [rip + .Lx543_8]
                                                                                        jmp   rax
.Lx543_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx543_2
.Lx543_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx543_2
.Lx543_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n523_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx543_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n529_match_defer_α
.Lx543_6:
                        add              rsp, 16
                                                                                        jmp   n523_match_arbno_af
n528_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n529_match_defer_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 3
                                                                                        jne   .Lx544_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx544_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx544_10
.Lx544_9:
                        xor              eax, eax
.Lx544_10:
                        test             rax, rax
                                                                                        jz    .Lx544_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx544_4]
                        lea              rdx, [rip + .Lx544_5]
                                                                                        jmp   rax
.Lx544_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n530_match_assign_save_α
.Lx544_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n528_match_defer_β
.Lx544_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx544_2:
                        test             rax, rax
                                                                                        je    .Lx544_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx544_7]
                        lea              rdx, [rip + .Lx544_8]
                                                                                        jmp   rax
.Lx544_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx544_2
.Lx544_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx544_2
.Lx544_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n528_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx544_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n530_match_assign_save_α
.Lx544_6:
                        add              rsp, 16
                                                                                        jmp   n528_match_defer_β
n529_match_defer_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n528_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n530_match_assign_save_α:
                        lea              rdi, [rbp + 224]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n527_match_defer_α
n530_match_assign_save_β:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n529_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n531_match_assign_cond_α:
                        lea              rdi, [rbp + 224]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n523_match_arbno_as
n531_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n527_match_defer_β
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 320], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 312]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 320], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 312]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 312], eax
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
                                                                                        jmp   qword ptr [rbp + 304]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, [rbp + 328]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "EMIT"
                        .align           8
.Lstartup_pnames0:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_EMIT_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PSH"
                        .align           8
.Lstartup_pnames1:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PSH_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "DRF"
.Lstartup_pp2_0:        .string          "nm"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_DRF_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "ADD"
.Lstartup_pp3_0:        .string          "p1"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_ADD_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "SUB"
.Lstartup_pp4_0:        .string          "p1"
                        .align           8
.Lstartup_pnames4:
                        .quad            .Lstartup_pp4_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_pnames4]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_SUB_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "MUL"
.Lstartup_pp5_0:        .string          "p1"
                        .align           8
.Lstartup_pnames5:
                        .quad            .Lstartup_pp5_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + .Lstartup_pnames5]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_MUL_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "DIV"
.Lstartup_pp6_0:        .string          "p1"
                        .align           8
.Lstartup_pnames6:
                        .quad            .Lstartup_pp6_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_DIV_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "SGN"
.Lstartup_pp7_0:        .string          "p1"
                        .align           8
.Lstartup_pnames7:
                        .quad            .Lstartup_pp7_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_SGN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
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
                        sub              rsp, 8152
                        mov              rdi, rsp
                        mov              ecx, 8152
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 8144], rbp
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
n549_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n550_call_α
.Lx665_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n550_call_α:
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4744], rax
                        .section         .rodata
.Lrkfn667:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]
                        lea              rsi, [rbp + 4736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                        cmp              eax, 99
                                                                                        je    n552_keyword_snobol4_α
                                                                                        jmp   n551_assign_α
n550_call_β:
                                                                                        jmp   n552_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n551_assign_α:
                        mov              rax, qword ptr [rbp + 4720]
                        mov              rdx, qword ptr [rbp + 4728]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   n552_keyword_snobol4_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n552_keyword_snobol4_α:
                        mov              rdi, qword ptr [rip + .Lx669_0]
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   n553_assign_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n553_assign_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              rdx, qword ptr [rbp + 4824]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n554_lit_string_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n555_assign_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n556_lit_string_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:
                        mov              qword ptr [rbp + 4944], 1
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n557_call_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n557_call_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4920], rax
                        .section         .rodata
.Lrkfn675:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn675]
                        lea              rsi, [rbp + 4912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 99
                                                                                        je    n559_lit_string_α
                                                                                        jmp   n558_assign_α
n557_call_β:
                                                                                        jmp   n559_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n558_assign_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              rdx, qword ptr [rbp + 4904]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n559_lit_string_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:
                        mov              qword ptr [rbp + 5040], 1
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   n560_call_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n560_call_α:
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5016], rax
                        .section         .rodata
.Lrkfn679:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn679]
                        lea              rsi, [rbp + 5008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              eax, 99
                                                                                        je    n562_lit_string_α
                                                                                        jmp   n561_assign_α
n560_call_β:
                                                                                        jmp   n562_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n561_assign_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              rdx, qword ptr [rbp + 5000]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n562_lit_string_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:
                        mov              qword ptr [rbp + 5136], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 5144], rax
                                                                                        jmp   n563_call_α
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n563_call_α:
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5112], rax
                        .section         .rodata
.Lrkfn683:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rbp + 5104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        cmp              eax, 99
                                                                                        je    n565_lit_string_α
                                                                                        jmp   n564_assign_α
n563_call_β:
                                                                                        jmp   n565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n564_assign_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              rdx, qword ptr [rbp + 5096]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   n565_lit_string_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 5232], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n566_call_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n566_call_α:
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rax
                        .section         .rodata
.Lrkfn687:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn687]
                        lea              rsi, [rbp + 5200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              eax, 99
                                                                                        je    n568_lit_string_α
                                                                                        jmp   n567_assign_α
n566_call_β:
                                                                                        jmp   n568_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_assign_α:
                        mov              rax, qword ptr [rbp + 5184]
                        mov              rdx, qword ptr [rbp + 5192]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                                                                                        jmp   n568_lit_string_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n569_call_α
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n569_call_α:
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5304], rax
                        .section         .rodata
.Lrkfn691:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn691]
                        lea              rsi, [rbp + 5296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                        cmp              eax, 99
                                                                                        je    n571_lit_string_α
                                                                                        jmp   n570_assign_α
n569_call_β:
                                                                                        jmp   n571_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n570_assign_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                                                                                        jmp   n571_lit_string_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:
                        mov              qword ptr [rbp + 5424], 1
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n572_call_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n572_call_α:
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                        .section         .rodata
.Lrkfn695:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn695]
                        lea              rsi, [rbp + 5392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                                                                                        je    n574_lit_string_α
                                                                                        jmp   n573_assign_α
n572_call_β:
                                                                                        jmp   n574_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n573_assign_α:
                        mov              rax, qword ptr [rbp + 5376]
                        mov              rdx, qword ptr [rbp + 5384]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                                                                                        jmp   n574_lit_string_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_string_α:
                        mov              qword ptr [rbp + 5520], 1
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 5528], rax
                                                                                        jmp   n575_call_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5496], rax
                        .section         .rodata
.Lrkfn699:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn699]
                        lea              rsi, [rbp + 5488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n577_lit_string_α
                                                                                        jmp   n576_assign_α
n575_call_β:
                                                                                        jmp   n577_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n576_assign_α:
                        mov              rax, qword ptr [rbp + 5472]
                        mov              rdx, qword ptr [rbp + 5480]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                                                                                        jmp   n577_lit_string_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:
                        mov              qword ptr [rbp + 5616], 1
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rbp + 5624], rax
                                                                                        jmp   n578_call_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n578_call_α:
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5592], rax
                        .section         .rodata
.Lrkfn703:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn703]
                        lea              rsi, [rbp + 5584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 99
                                                                                        je    n580_lit_string_α
                                                                                        jmp   n579_assign_α
n578_call_β:
                                                                                        jmp   n580_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n579_assign_α:
                        mov              rax, qword ptr [rbp + 5568]
                        mov              rdx, qword ptr [rbp + 5576]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n580_lit_string_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:
                        mov              qword ptr [rbp + 5712], 1
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n581_lit_integer_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_integer_α:
                        mov              qword ptr [rbp + 5744], 6
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n582_call_α
.Lx706_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n582_call_α:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5672], rax
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        .section         .rodata
.Lrkfn708:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn708]
                        lea              rsi, [rbp + 5664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              eax, 99
                                                                                        je    n583_lit_integer_α
                                                                                        jmp   n583_lit_integer_α
n582_call_β:
                                                                                        jmp   n583_lit_integer_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_integer_α:
                        mov              qword ptr [rbp + 5840], 6
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 5848], rax
                                                                                        jmp   n584_call_α
.Lx709_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n584_call_α:
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5816], rax
                        .section         .rodata
.Lbynamefn274:          .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn274]
                        lea              rsi, [rbp + 5808]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 99
                                                                                        je    n586_call_α
                                                                                        jmp   n585_assign_α
n584_call_β:
                                                                                        jmp   n586_call_α
#-----------------------------------------------------------------------------------------------------------------------
n585_assign_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   n586_call_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:
                        .section         .rodata
.Lrkfn713:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn713]
                        lea              rsi, [rbp + 5904]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              eax, 99
                                                                                        je    n588_var_α
                                                                                        jmp   n587_assign_α
n586_call_β:
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n587_assign_α:
                        mov              rax, qword ptr [rbp + 5888]
                        mov              rdx, qword ptr [rbp + 5896]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n588_var_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                                                                                        jmp   n589_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:
                        mov              qword ptr [rbp + 5952], 1
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n591_subscript_α
.Lx716_0:
                        .quad            .Lx716_0_s
.Lx716_0_s:
                        .string          "x"
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n590_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   n592_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n591_subscript_α:
                        mov              rdi, qword ptr [rbp + 5920]
                        mov              rsi, qword ptr [rbp + 5928]
                        mov              rdx, qword ptr [rbp + 5952]
                        mov              rcx, qword ptr [rbp + 5960]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n590_var_α
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                                                                                        jmp   n594_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n595_subscript_α
.Lx719_0:
                        .quad            .Lx719_0_s
.Lx719_0_s:
                        .string          "y"
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n593_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 6208], rax
                        mov              qword ptr [rbp + 6216], rdx
                                                                                        jmp   n596_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_integer_α:
                        mov              qword ptr [rbp + 6016], 6
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n598_assign_var_α
.Lx721_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n595_subscript_α:
                        mov              rdi, qword ptr [rbp + 6064]
                        mov              rsi, qword ptr [rbp + 6072]
                        mov              rdx, qword ptr [rbp + 6096]
                        mov              rcx, qword ptr [rbp + 6104]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n593_var_α
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                                                                                        jmp   n599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:
                        mov              qword ptr [rbp + 6240], 1
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n600_subscript_α
.Lx723_0:
                        .quad            .Lx723_0_s
.Lx723_0_s:
                        .string          "z"
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n597_var_α:
                        mov              rdi, qword ptr [rip + .Lx724_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        je    n602_var_α
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   n601_assign_α
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n598_assign_var_α:
                        mov              rdi, qword ptr [rbp + 5984]
                        mov              rsi, qword ptr [rbp + 5992]
                        mov              rdx, qword ptr [rbp + 6016]
                        mov              rcx, qword ptr [rbp + 6024]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n590_var_α
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx
                                                                                        jmp   n590_var_α
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_integer_α:
                        mov              qword ptr [rbp + 6160], 6
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 6168], rax
                                                                                        jmp   n603_assign_var_α
.Lx726_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n600_subscript_α:
                        mov              rdi, qword ptr [rbp + 6208]
                        mov              rsi, qword ptr [rbp + 6216]
                        mov              rdx, qword ptr [rbp + 6240]
                        mov              rcx, qword ptr [rbp + 6248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n597_var_α
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                                                                                        jmp   n604_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n601_assign_α:
                        mov              rax, qword ptr [rbp + 6368]
                        mov              rdx, qword ptr [rbp + 6376]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                                                                                        jmp   n605_var_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   n606_var_α
#-----------------------------------------------------------------------------------------------------------------------
n603_assign_var_α:
                        mov              rdi, qword ptr [rbp + 6128]
                        mov              rsi, qword ptr [rbp + 6136]
                        mov              rdx, qword ptr [rbp + 6160]
                        mov              rcx, qword ptr [rbp + 6168]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n593_var_α
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                                                                                        jmp   n593_var_α
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_integer_α:
                        mov              qword ptr [rbp + 6304], 6
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n608_assign_var_α
.Lx731_0:
                        .quad            3
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n605_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                                                                                        jmp   n609_var_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                                                                                        jmp   n611_binop_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n607_call_α:
                        .section         .rodata
.Lrkfn735:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn735]
                        lea              rsi, [rbp + 7520]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        cmp              eax, 99
                                                                                        je    n613_var_α
                                                                                        jmp   n612_assign_α
n607_call_β:
                                                                                        jmp   n613_var_α
#-----------------------------------------------------------------------------------------------------------------------
n608_assign_var_α:
                        mov              rdi, qword ptr [rbp + 6272]
                        mov              rsi, qword ptr [rbp + 6280]
                        mov              rdx, qword ptr [rbp + 6304]
                        mov              rcx, qword ptr [rbp + 6312]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n597_var_α
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n597_var_α
#-----------------------------------------------------------------------------------------------------------------------
n609_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                                                                                        jmp   n614_binop_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                                                                                        jmp   n615_call_α
#-----------------------------------------------------------------------------------------------------------------------
n611_binop_α:
                        mov              rdi, qword ptr [rbp + 7392]
                        mov              rsi, qword ptr [rbp + 7400]
                        mov              rdx, qword ptr [rbp + 7424]
                        mov              rcx, qword ptr [rbp + 7432]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                                                                                        jmp   n616_var_α
#-----------------------------------------------------------------------------------------------------------------------
n612_assign_α:
                        mov              rax, qword ptr [rbp + 7504]
                        mov              rdx, qword ptr [rbp + 7512]
                        mov              qword ptr [1879052752], rax
                        mov              qword ptr [1879052760], rdx
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                                                                                        jmp   n613_var_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                                                                                        jmp   n617_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n614_binop_α:
                        mov              rdi, qword ptr [rbp + 6480]
                        mov              rsi, qword ptr [rbp + 6488]
                        mov              rdx, qword ptr [rbp + 6512]
                        mov              rcx, qword ptr [rbp + 6520]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   n619_var_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_α:
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 6728], rax
                        .section         .rodata
.Lrkfn744:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn744]
                        lea              rsi, [rbp + 6720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                        cmp              eax, 99
                                                                                        je    n597_var_α
                                                                                        jmp   n620_lit_integer_α
n615_call_β:
                                                                                        jmp   n597_var_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                                                                                        jmp   n621_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n617_match_head_α:
                        mov              qword ptr [rbp + 7592], rbp
                        mov              rdi, qword ptr [rbp + 7616]
                        mov              rsi, qword ptr [rbp + 7624]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 7584], r12
                        mov              qword ptr [rbp + 7568], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 7560], rax
                        mov              dword ptr [rbp + 7552], 0
.Lx747_0:
                        mov              r14d, dword ptr [rbp + 7552]
                                                                                        jmp   n622_match_defer_α
n617_match_head_β:
                        add              dword ptr [rbp + 7552], 1
                        mov              eax, dword ptr [rbp + 7552]
                        cmp              eax, r15d
                                                                                        jg    .Lx747_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx747_1
                                                                                        jmp   .Lx747_0
.Lx747_1:
                        mov              rax, qword ptr [rbp + 7560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 7568]
                        mov              r12, qword ptr [rbp + 7584]
                        mov              rbp, qword ptr [rbp + 7592]
                                                                                        jmp   n618_call_α
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:
                        .section         .rodata
.Lrkfn749:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn749]
                        lea              rsi, [rbp + 7904]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        cmp              eax, 99
                                                                                        je    n624_lit_string_α
                                                                                        jmp   n623_assign_α
n618_call_β:
                                                                                        jmp   n624_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                                                                                        jmp   n625_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_integer_α:
                        mov              qword ptr [rbp + 6672], 6
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rbp + 6680], rax
                                                                                        jmp   n626_op74_α
.Lx751_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n621_binop_α:
                        mov              rdi, qword ptr [rbp + 7360]
                        mov              rsi, qword ptr [rbp + 7368]
                        mov              rdx, qword ptr [rbp + 7456]
                        mov              rcx, qword ptr [rbp + 7464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx
                                                                                        jmp   n627_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n622_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx753_11
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 3
                                                                                        jne   .Lx753_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx753_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx753_10
.Lx753_9:
                        xor              eax, eax
.Lx753_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx753_11:
                        test             rax, rax
                                                                                        jz    .Lx753_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx753_4]
                        lea              rdx, [rip + .Lx753_5]
                                                                                        jmp   rax
.Lx753_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 7552], eax
                                                                                        jmp   n628_match_release_α
.Lx753_5:
                                                                                        jmp   n617_match_head_β
.Lx753_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx753_2:
                        test             rax, rax
                                                                                        je    .Lx753_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx753_7]
                        lea              rdx, [rip + .Lx753_8]
                                                                                        jmp   rax
.Lx753_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx753_2
.Lx753_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx753_2
.Lx753_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n617_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx753_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n628_match_release_α
.Lx753_6:
                        add              rsp, 16
                                                                                        jmp   n617_match_head_β
n622_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n623_assign_α:
                        mov              rax, qword ptr [rbp + 7888]
                        mov              rdx, qword ptr [rbp + 7896]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                                                                                        jmp   n624_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:
                        mov              qword ptr [rbp + 7936], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 7944], rax
                                                                                        jmp   n629_assign_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n625_binop_α:
                        mov              rdi, qword ptr [rbp + 6448]
                        mov              rsi, qword ptr [rbp + 6456]
                        mov              rdx, qword ptr [rbp + 6544]
                        mov              rcx, qword ptr [rbp + 6552]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                                                                                        jmp   n630_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n626_op74_α:
                        mov              eax, dword ptr [rbp + 6704]
                        cmp              eax, 7
                                                                                        je    .Lx758_1
                        cmp              eax, 6
                                                                                        jne   .Lx758_0
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 6
                                                                                        jne   .Lx758_0
.Lx758_1:
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6648], rax
                                                                                        jmp   n631_op74_α
.Lx758_0:
                        lea              rdi, [rbp + 6704]
                        lea              rsi, [rbp + 6672]
                        lea              rdx, [rbp + 6640]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n631_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n627_assign_α:
                        mov              rax, qword ptr [rbp + 7328]
                        mov              rdx, qword ptr [rbp + 7336]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                                                                                        jmp   n607_call_α
#-----------------------------------------------------------------------------------------------------------------------
n628_match_release_α:
                        mov              rax, qword ptr [rbp + 7560]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 7568]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 7616]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx761_1:
                        test             rax, rax
                                                                                        je    .Lx761_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx761_3]
                        lea              rdx, [rip + .Lx761_4]
                                                                                        jmp   rax
.Lx761_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx761_1
.Lx761_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx761_1
.Lx761_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 7584]
                        mov              rbp, qword ptr [rbp + 7592]
                                                                                        jmp   n632_call_α
#-----------------------------------------------------------------------------------------------------------------------
n629_assign_α:
                        mov              rsi, qword ptr [rbp + 7936]
                        mov              rdx, qword ptr [rbp + 7944]
                        mov              rdi, qword ptr [rip + .Lx762_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                                                                                        jmp   n633_lit_string_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n630_assign_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              rdx, qword ptr [rbp + 6424]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n610_var_α
#-----------------------------------------------------------------------------------------------------------------------
n631_op74_α:
                        mov              eax, dword ptr [rbp + 6672]
                        cmp              eax, 7
                                                                                        je    .Lx765_1
                        cmp              eax, 6
                                                                                        jne   .Lx765_0
                        mov              eax, dword ptr [rbp + 6704]
                        cmp              eax, 6
                                                                                        jne   .Lx765_0
.Lx765_1:
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n634_op76_α
.Lx765_0:
                        lea              rdi, [rbp + 6672]
                        lea              rsi, [rbp + 6704]
                        lea              rdx, [rbp + 6608]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n634_op76_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:
                        .section         .rodata
.Lrkfn767:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn767]
                        lea              rsi, [rbp + 7680]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        cmp              eax, 99
                                                                                        je    n636_lit_string_α
                                                                                        jmp   n635_assign_α
n632_call_β:
                                                                                        jmp   n636_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:
                        mov              qword ptr [rbp + 8016], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 8024], rax
                                                                                        jmp   n637_var_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n634_op76_α:
                        lea              rdi, [rbp + 6640]
                        lea              rsi, [rbp + 6608]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n597_var_α
                        mov              qword ptr [rbp + 6576], 0
                        mov              qword ptr [rbp + 6584], 0
                                                                                        jmp   n638_var_α
#-----------------------------------------------------------------------------------------------------------------------
n635_assign_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              rdx, qword ptr [rbp + 7672]
                        mov              qword ptr [1879052768], rax
                        mov              qword ptr [1879052776], rdx
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                                                                                        jmp   n636_lit_string_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:
                        mov              qword ptr [rbp + 7744], 1
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 7752], rax
                                                                                        jmp   n639_var_α
.Lx772_0:
                        .quad            .Lx772_0_s
.Lx772_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n637_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                                                                                        jmp   n640_var_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n638_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 6832], rax
                        mov              qword ptr [rbp + 6840], rdx
                                                                                        jmp   n641_var_α
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:
                        mov              rax, qword ptr [1879052768]
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                                                                                        jmp   n643_var_α
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 8112], rax
                        mov              qword ptr [rbp + 8120], rdx
                                                                                        jmp   n644_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n641_var_α:
                        mov              rax, qword ptr [1879052704]
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                                                                                        jmp   n645_binop_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:
                        mov              qword ptr [rbp + 6912], 1
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rbp + 6920], rax
                                                                                        jmp   n646_assign_α
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n643_var_α:
                        mov              rax, qword ptr [1879052752]
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rbp + 7840], rax
                        mov              qword ptr [rbp + 7848], rdx
                                                                                        jmp   n647_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n644_binop_α:
                        mov              eax, dword ptr [rbp + 8080]
                        cmp              eax, 100
                                                                                        je    .Lx780_0
                        mov              eax, dword ptr [rbp + 8112]
                        cmp              eax, 100
                                                                                        je    .Lx780_0
                        mov              eax, dword ptr [rbp + 8080]
                        cmp              eax, 6
                                                                                        jne   .Lx780_2
                        mov              eax, dword ptr [rbp + 8112]
                        cmp              eax, 6
                                                                                        jne   .Lx780_2
.Lx780_1:
                        mov              rax, qword ptr [rbp + 8088]
                        mov              rcx, qword ptr [rbp + 8120]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 8048], 6
                        mov              qword ptr [rbp + 8056], rax
                                                                                        jmp   n648_binop_α
.Lx780_0:
                        mov              rdi, qword ptr [rbp + 8080]
                        mov              rsi, qword ptr [rbp + 8088]
                        mov              rdx, qword ptr [rbp + 8112]
                        mov              rcx, qword ptr [rbp + 8120]
                        mov              r8d, 1
                        lea              r9, [rbp + 8048]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n648_binop_α
.Lx780_2:
                        mov              rdi, qword ptr [rbp + 8080]
                        mov              rsi, qword ptr [rbp + 8088]
                        mov              rdx, qword ptr [rbp + 8112]
                        mov              rcx, qword ptr [rbp + 8120]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 8048], rax
                        mov              qword ptr [rbp + 8056], rdx
                                                                                        jmp   n648_binop_α
n644_binop_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n645_binop_α:
                        mov              rdi, qword ptr [rbp + 6832]
                        mov              rsi, qword ptr [rbp + 6840]
                        mov              rdx, qword ptr [rbp + 6864]
                        mov              rcx, qword ptr [rbp + 6872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                                                                                        jmp   n649_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n646_assign_α:
                        mov              rax, qword ptr [rbp + 6912]
                        mov              rdx, qword ptr [rbp + 6920]
                        mov              qword ptr [1879052704], rax
                        mov              qword ptr [1879052712], rdx
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                                                                                        jmp   n650_var_α
#-----------------------------------------------------------------------------------------------------------------------
n647_binop_α:
                        mov              eax, dword ptr [rbp + 7808]
                        cmp              eax, 100
                                                                                        je    .Lx783_0
                        mov              eax, dword ptr [rbp + 7840]
                        cmp              eax, 100
                                                                                        je    .Lx783_0
                        mov              eax, dword ptr [rbp + 7808]
                        cmp              eax, 6
                                                                                        jne   .Lx783_2
                        mov              eax, dword ptr [rbp + 7840]
                        cmp              eax, 6
                                                                                        jne   .Lx783_2
.Lx783_1:
                        mov              rax, qword ptr [rbp + 7816]
                        mov              rcx, qword ptr [rbp + 7848]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 7776], 6
                        mov              qword ptr [rbp + 7784], rax
                                                                                        jmp   n651_binop_α
.Lx783_0:
                        mov              rdi, qword ptr [rbp + 7808]
                        mov              rsi, qword ptr [rbp + 7816]
                        mov              rdx, qword ptr [rbp + 7840]
                        mov              rcx, qword ptr [rbp + 7848]
                        mov              r8d, 1
                        lea              r9, [rbp + 7776]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n651_binop_α
.Lx783_2:
                        mov              rdi, qword ptr [rbp + 7808]
                        mov              rsi, qword ptr [rbp + 7816]
                        mov              rdx, qword ptr [rbp + 7840]
                        mov              rcx, qword ptr [rbp + 7848]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 7776], rax
                        mov              qword ptr [rbp + 7784], rdx
                                                                                        jmp   n651_binop_α
n647_binop_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n648_binop_α:
                        mov              rdi, qword ptr [rbp + 8016]
                        mov              rsi, qword ptr [rbp + 8024]
                        mov              rdx, qword ptr [rbp + 8048]
                        mov              rcx, qword ptr [rbp + 8056]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7984], rax
                        mov              qword ptr [rbp + 7992], rdx
                                                                                        jmp   n652_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n649_assign_α:
                        mov              rax, qword ptr [rbp + 6800]
                        mov              rdx, qword ptr [rbp + 6808]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                                                                                        jmp   n642_lit_string_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n650_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                                                                                        jmp   n653_call_α
#-----------------------------------------------------------------------------------------------------------------------
n651_binop_α:
                        mov              rdi, qword ptr [rbp + 7744]
                        mov              rsi, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7776]
                        mov              rcx, qword ptr [rbp + 7784]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                                                                                        jmp   n654_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n652_assign_α:
                        mov              rsi, qword ptr [rbp + 7984]
                        mov              rdx, qword ptr [rbp + 7992]
                        mov              rdi, qword ptr [rip + .Lx788_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7968], rax
                        mov              qword ptr [rbp + 7976], rdx
                                                                                        jmp   main_γ
.Lx788_0:
                        .quad            .Lx788_0_s
.Lx788_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n653_call_α:
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7096], rax
                        .section         .rodata
.Lrkfn790:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn790]
                        lea              rsi, [rbp + 7088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              eax, 99
                                                                                        je    n597_var_α
                                                                                        jmp   n655_lit_integer_α
n653_call_β:
                                                                                        jmp   n597_var_α
#-----------------------------------------------------------------------------------------------------------------------
n654_assign_α:
                        mov              rsi, qword ptr [rbp + 7712]
                        mov              rdx, qword ptr [rbp + 7720]
                        mov              rdi, qword ptr [rip + .Lx791_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 7696], rax
                        mov              qword ptr [rbp + 7704], rdx
                                                                                        jmp   main_γ
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_integer_α:
                        mov              qword ptr [rbp + 7040], 6
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 7048], rax
                                                                                        jmp   n656_op74_α
.Lx792_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n656_op74_α:
                        mov              eax, dword ptr [rbp + 7072]
                        cmp              eax, 7
                                                                                        je    .Lx794_1
                        cmp              eax, 6
                                                                                        jne   .Lx794_0
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 6
                                                                                        jne   .Lx794_0
.Lx794_1:
                        mov              rax, qword ptr [rbp + 7072]
                        mov              qword ptr [rbp + 7008], rax
                        mov              rax, qword ptr [rbp + 7080]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n657_op74_α
.Lx794_0:
                        lea              rdi, [rbp + 7072]
                        lea              rsi, [rbp + 7040]
                        lea              rdx, [rbp + 7008]
                        mov              rcx, 111
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n657_op74_α
#-----------------------------------------------------------------------------------------------------------------------
n657_op74_α:
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 7
                                                                                        je    .Lx796_1
                        cmp              eax, 6
                                                                                        jne   .Lx796_0
                        mov              eax, dword ptr [rbp + 7072]
                        cmp              eax, 6
                                                                                        jne   .Lx796_0
.Lx796_1:
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 6984], rax
                                                                                        jmp   n658_op76_α
.Lx796_0:
                        lea              rdi, [rbp + 7040]
                        lea              rsi, [rbp + 7072]
                        lea              rdx, [rbp + 6976]
                        mov              rcx, 112
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n658_op76_α
#-----------------------------------------------------------------------------------------------------------------------
n658_op76_α:
                        lea              rdi, [rbp + 7008]
                        lea              rsi, [rbp + 6976]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n597_var_α
                        mov              qword ptr [rbp + 6944], 0
                        mov              qword ptr [rbp + 6952], 0
                                                                                        jmp   n659_var_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n659_var_α:
                        mov              rax, qword ptr [1879052736]
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                                                                                        jmp   n660_var_α
#-----------------------------------------------------------------------------------------------------------------------
n660_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                                                                                        jmp   n662_binop_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:
                        mov              qword ptr [rbp + 7280], 1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 7288], rax
                                                                                        jmp   n663_assign_α
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n662_binop_α:
                        mov              rdi, qword ptr [rbp + 7200]
                        mov              rsi, qword ptr [rbp + 7208]
                        mov              rdx, qword ptr [rbp + 7232]
                        mov              rcx, qword ptr [rbp + 7240]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                                                                                        jmp   n664_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n663_assign_α:
                        mov              rax, qword ptr [rbp + 7280]
                        mov              rdx, qword ptr [rbp + 7288]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                                                                                        jmp   n597_var_α
#-----------------------------------------------------------------------------------------------------------------------
n664_assign_α:
                        mov              rax, qword ptr [rbp + 7168]
                        mov              rdx, qword ptr [rbp + 7176]
                        mov              qword ptr [1879052736], rax
                        mov              qword ptr [1879052744], rdx
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                                                                                        jmp   n661_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 8144]
                        add              rsp, 8152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 8144]
                        add              rsp, 8152
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
