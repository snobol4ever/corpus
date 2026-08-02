                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__F_α
proc_LBL__F_α:
proc_LBL__F_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__F_ω
#=======================================================================================================================
# F       N = N + 1
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_binop_α
.Lx16_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx17_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n5_lit_string_α
.Lx17_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n5_lit_string_α
#=======================================================================================================================
#         JUNK = 'xxyy'
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "xxyy"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # JUNK
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n7_var_α
#=======================================================================================================================
#         JUNK ? 'xx'
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 192
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # JUNK
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 136], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 144], r13                     # outer_Σ
                        mov              qword ptr [rbp + 152], r14                     # outer_δ
                        mov              qword ptr [rbp + 160], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 168], rax                     # cap_gen
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
.Lx23_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n9_match_lit_α
n8_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx23_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx23_1
                                                                                        jmp   .Lx23_0
.Lx23_1:
                        mov              r10, qword ptr [1879048192]
.Lx23_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx23_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 144]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 152]                     # outer_δ
                        mov              r15, qword ptr [rbp + 160]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 168]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 120]
                        add              rsp, 192
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n8_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n8_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 120
                                                                                        jne   n8_match_head_β
                        add              r14d, 2
                                                                                        jmp   n10_match_release_α
n9_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n8_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx27_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_9
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
.Lx27_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx27_1:
                        test             rax, rax
                                                                                        je    .Lx27_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx27_3]
                        lea              rdx, [rip + .Lx27_4]
                                                                                        jmp   rax
.Lx27_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx27_1
.Lx27_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx27_1
.Lx27_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx27_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 144]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 152]                     # outer_δ
                        mov              r15, qword ptr [rbp + 160]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 168]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 120]
                        add              rsp, 192
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
#         F = 'AB'                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # F
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n13_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n13_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__F_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__F_β:
                                                                                        jmp   proc_LBL__F_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__F_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__F_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_F_α
proc_F_α:
proc_F_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n32_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n33_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n33_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx37_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx37_1
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "F"
.Lx37_1:
                                                                                        jmp   proc_F_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_F_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_F_β:
                                                                                        jmp   proc_F_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_F_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_F_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EXPR$0_α
proc_EXPR$0_α:
proc_EXPR$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # F
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx41_0]                 # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx41_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_6]
                        lea              rdx, [rip + .Lx41_7]
                                                                                        jmp   rax
.Lx41_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx41_2
.Lx41_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx41_2
.Lx41_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx41_0]                 # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx41_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_3]
                        lea              rdx, [rip + .Lx41_4]
                                                                                        jmp   rax
.Lx41_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx41_2
.Lx41_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx41_2
.Lx41_1:
                        call             rt_faildescr@PLT
.Lx41_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx41_240
                        add              rsp, 16
                                                                                        jmp   proc_EXPR$0_ω
.Lx41_240:
                                                                                        jmp   n39_assign_α
n38_call_β:
                                                                                        jmp   proc_EXPR$0_ω
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052336], rax                    # EXPR$0
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 16
                                                                                        jmp   proc_EXPR$0_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$0_β:
                                                                                        jmp   proc_EXPR$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EXPR$1_α
proc_EXPR$1_α:
proc_EXPR$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # F
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx46_0]                 # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx46_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx46_6]
                        lea              rdx, [rip + .Lx46_7]
                                                                                        jmp   rax
.Lx46_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx46_2
.Lx46_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx46_2
.Lx46_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx46_0]                 # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx46_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx46_3]
                        lea              rdx, [rip + .Lx46_4]
                                                                                        jmp   rax
.Lx46_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx46_2
.Lx46_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx46_2
.Lx46_1:
                        call             rt_faildescr@PLT
.Lx46_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx46_240
                        add              rsp, 16
                                                                                        jmp   proc_EXPR$1_ω
.Lx46_240:
                                                                                        jmp   n44_assign_α
n43_call_β:
                                                                                        jmp   proc_EXPR$1_ω
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052352], rax                    # EXPR$1
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   proc_EXPR$1_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$1_β:
                                                                                        jmp   proc_EXPR$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_EXPR$1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__F"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__F_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "F"
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
                        lea              rsi, [rip + proc_F_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "EXPR$0"
                        .align           8
.Lstartup_pnames2:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_EXPR$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "EXPR$1"
                        .align           8
.Lstartup_pnames3:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_EXPR$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "F"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "JUNK"
.Lgvan3:                .string          "EXPR$0"
.Lgvan4:                .string          "EXPR$1"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
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
#         DEFINE('F()')                            :(MAIN)
# MAIN    N = 0
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_assign_α
.Lx101_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n50_lit_string_α
#=======================================================================================================================
#         'ABC' ? 'A' *F() 'C'                     :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 368
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_match_head_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "ABC"
#-----------------------------------------------------------------------------------------------------------------------
n51_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 280], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 288], r13                     # outer_Σ
                        mov              qword ptr [rbp + 296], r14                     # outer_δ
                        mov              qword ptr [rbp + 304], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 256], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 248], rax                     # patstk_mark
                        mov              dword ptr [rbp + 240], 0                       # start_δ
.Lx105_0:
                        mov              r14d, dword ptr [rbp + 240]
                                                                                        jmp   n52_match_sequence_α
n51_match_head_β:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, r15d
                                                                                        jg    .Lx105_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx105_1
                                                                                        jmp   .Lx105_0
.Lx105_1:
                        mov              rax, qword ptr [rbp + 248]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 256]
                        mov              r10, qword ptr [1879048192]
.Lx105_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx105_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 296]                     # outer_δ
                        mov              r15, qword ptr [rbp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 264]
                        add              rsp, 368
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_match_sequence_α:
                        mov              dword ptr [rbp + 336], r14d
                                                                                        jmp   n75_match_lit_α
n52_match_sequence_as:
                                                                                        jmp   n53_match_release_α
n52_match_sequence_β:
                                                                                        jmp   n73_match_lit_β
n52_match_sequence_af:
                                                                                        jmp   n51_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_release_α:
                        mov              rax, qword ptr [rbp + 248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 256]
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
                        mov              r13, qword ptr [rbp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 296]                     # outer_δ
                        mov              r15, qword ptr [rbp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 264]
                        add              rsp, 368
                                                                                        jmp   n54_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'match'                         :(NEXT)
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "match"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx111_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n56_lit_string_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# NEXT    OUTPUT = 'calls=' N
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_var_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "calls="
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx115_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n60_lit_string_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         'AABZ' ? 'A' *F() 'Z'                    :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 592
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
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_match_head_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "AABZ"
#-----------------------------------------------------------------------------------------------------------------------
n61_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 504], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 512], r13                     # outer_Σ
                        mov              qword ptr [rbp + 520], r14                     # outer_δ
                        mov              qword ptr [rbp + 528], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 536], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 480], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 472], rax                     # patstk_mark
                        mov              dword ptr [rbp + 464], 0                       # start_δ
.Lx118_0:
                        mov              r14d, dword ptr [rbp + 464]
                                                                                        jmp   n62_match_sequence_α
n61_match_head_β:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, r15d
                                                                                        jg    .Lx118_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx118_1
                                                                                        jmp   .Lx118_0
.Lx118_1:
                        mov              rax, qword ptr [rbp + 472]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 480]
                        mov              r10, qword ptr [1879048192]
.Lx118_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx118_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 512]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 520]                     # outer_δ
                        mov              r15, qword ptr [rbp + 528]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 536]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 488]
                        add              rsp, 592
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_match_sequence_α:
                        mov              dword ptr [rbp + 560], r14d
                                                                                        jmp   n72_match_lit_α
n62_match_sequence_as:
                                                                                        jmp   n63_match_release_α
n62_match_sequence_β:
                                                                                        jmp   n70_match_lit_β
n62_match_sequence_af:
                                                                                        jmp   n61_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_release_α:
                        mov              rax, qword ptr [rbp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx122_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx122_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx122_1:
                        test             rax, rax
                                                                                        je    .Lx122_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx122_3]
                        lea              rdx, [rip + .Lx122_4]
                                                                                        jmp   rax
.Lx122_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx122_1
.Lx122_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx122_1
.Lx122_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx122_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx122_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 512]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 520]                     # outer_δ
                        mov              r15, qword ptr [rbp + 528]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 536]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 488]
                        add              rsp, 592
                                                                                        jmp   n64_lit_string_α
#=======================================================================================================================
# Y2      OUTPUT = 'match2'                        :(DONE)
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_assign_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "match2"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx124_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n66_lit_string_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# DONE    OUTPUT = 'calls=' N
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_var_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "calls="
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx128_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n71_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 90
                                                                                        jne   n71_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n63_match_release_α
n70_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n71_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_defer_α:
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx131_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx131_4]
                        lea              rdx, [rip + .Lx131_5]
                                                                                        jmp   rax
.Lx131_4:
                                                                                        jmp   n70_match_lit_α
.Lx131_5:
                                                                                        jmp   n72_match_lit_β
.Lx131_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx131_2:
                        test             rax, rax
                                                                                        je    .Lx131_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx131_7]
                        lea              rdx, [rip + .Lx131_8]
                                                                                        jmp   rax
.Lx131_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n72_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx131_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n70_match_lit_α
.Lx131_6:
                        add              rsp, 16
                                                                                        jmp   n72_match_lit_β
n71_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n72_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n61_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n61_match_head_β
                        add              r14d, 1
                                                                                        jmp   n71_match_defer_α
n72_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n61_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n74_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 67
                                                                                        jne   n74_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n53_match_release_α
n73_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n74_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_defer_α:
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx136_4]
                        lea              rdx, [rip + .Lx136_5]
                                                                                        jmp   rax
.Lx136_4:
                                                                                        jmp   n73_match_lit_α
.Lx136_5:
                                                                                        jmp   n75_match_lit_β
.Lx136_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx136_2:
                        test             rax, rax
                                                                                        je    .Lx136_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx136_7]
                        lea              rdx, [rip + .Lx136_8]
                                                                                        jmp   rax
.Lx136_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n75_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx136_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n73_match_lit_α
.Lx136_6:
                        add              rsp, 16
                                                                                        jmp   n75_match_lit_β
n74_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n75_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n51_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n51_match_head_β
                        add              r14d, 1
                                                                                        jmp   n74_match_defer_α
n75_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n51_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n76_goto_α:
                                                                                        jmp   n77_var_α
n76_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# F       N = N + 1
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_binop_α
.Lx141_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx142_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n81_lit_string_α
.Lx142_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 48
                                                                                        jmp   n81_lit_string_α
#=======================================================================================================================
#         JUNK = 'xxyy'
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_assign_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "xxyy"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # JUNK
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n83_var_α
#=======================================================================================================================
#         JUNK ? 'xx'
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        sub              rsp, 192
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # JUNK
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n84_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 136], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 144], r13                     # outer_Σ
                        mov              qword ptr [rbp + 152], r14                     # outer_δ
                        mov              qword ptr [rbp + 160], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 168], rax                     # cap_gen
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
.Lx148_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n85_match_lit_α
n84_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx148_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx148_1
                                                                                        jmp   .Lx148_0
.Lx148_1:
                        mov              r10, qword ptr [1879048192]
.Lx148_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx148_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 144]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 152]                     # outer_δ
                        mov              r15, qword ptr [rbp + 160]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 168]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 120]
                        add              rsp, 192
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n84_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n84_match_head_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 120
                                                                                        jne   n84_match_head_β
                        add              r14d, 2
                                                                                        jmp   n86_match_release_α
n85_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n84_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n86_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx152_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_9
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
.Lx152_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx152_1:
                        test             rax, rax
                                                                                        je    .Lx152_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx152_3]
                        lea              rdx, [rip + .Lx152_4]
                                                                                        jmp   rax
.Lx152_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx152_1
.Lx152_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx152_1
.Lx152_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx152_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 144]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 152]                     # outer_δ
                        mov              r15, qword ptr [rbp + 160]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 168]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 120]
                        add              rsp, 192
                                                                                        jmp   n87_lit_string_α
#=======================================================================================================================
#         F = 'AB'                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_assign_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # F
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n89_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n89_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n90_goto_α:
                                                                                        jmp   n48_lit_integer_α
n90_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:
                                                                                        jmp   n54_lit_string_α
n91_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_goto_α:
                                                                                        jmp   n93_lit_string_α
n92_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_assign_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx161_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n56_lit_string_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n95_goto_α:
                                                                                        jmp   n56_lit_string_α
n95_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_goto_α:
                                                                                        jmp   n64_lit_string_α
n96_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:
                                                                                        jmp   n98_lit_string_α
n97_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2      OUTPUT = 'fail2'
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_assign_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "fail2"
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx166_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n66_lit_string_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n66_lit_string_α
n100_goto_β:
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
.S0:                    .string          "*EXPR$1"
.S1:                    .string          "*EXPR$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
