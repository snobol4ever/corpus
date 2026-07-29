                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_for$2F3_α
proc_for$2F3_α:
                        .global          proc_for$2F3_α
                        .global          proc_for$2F3_β
                        .global          proc_for$2F3_γ
                        .global          proc_for$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_for$2F3_α_body:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n3_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx11_60:
                        .section         .rodata
.Lbynamegenfn4:         .string          "$for"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn4]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_for$2F3_ω
                                                                                        jmp   n4_suspend_α
n3_call_builtin_gen_β:
                                                                                        jmp   .Lx11_60
#-----------------------------------------------------------------------------------------------------------------------
n4_suspend_α:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_for$2F3_γ
n4_suspend_β:
                                                                                        jmp   n3_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_for$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_for$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_for$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_for$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_for$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$fa0$2F1_α
proc_$fa0$2F1_α:
                        .global          proc_$fa0$2F1_α
                        .global          proc_$fa0$2F1_β
                        .global          proc_$fa0$2F1_γ
                        .global          proc_$fa0$2F1_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 352
                        call             rt_jmp_frame_lexprep2@PLT
proc_$fa0$2F1_α_body:
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx24_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx24_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx24_101
.Lx24_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx24_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$fa0$2F1_ω
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_$fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx29_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx29_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx29_41
                        cmp              esi, 1
                                                                                        jne   .Lx29_55
                        mov              r8, rax
                                                                                        jmp   .Lx29_40
.Lx29_55:
                        cmp              esi, 2
                                                                                        jne   .Lx29_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx29_41
                        mov              r8, rax
                                                                                        jmp   .Lx29_40
.Lx29_56:
                        cmp              eax, 13
                                                                                        jne   .Lx29_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx29_41
                        cmp              rax, r8
                                                                                        je    .Lx29_41
                        mov              r8, rax
                                                                                        jmp   .Lx29_40
.Lx29_41:
                        lea              r9, [rbp + 272]
.Lx29_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx29_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx29_43
                        cmp              esi, 1
                                                                                        jne   .Lx29_57
                        mov              r9, rax
                                                                                        jmp   .Lx29_42
.Lx29_57:
                        cmp              esi, 2
                                                                                        jne   .Lx29_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx29_43
                        mov              r9, rax
                                                                                        jmp   .Lx29_42
.Lx29_58:
                        cmp              eax, 13
                                                                                        jne   .Lx29_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx29_43
                        cmp              rax, r9
                                                                                        je    .Lx29_43
                        mov              r9, rax
                                                                                        jmp   .Lx29_42
.Lx29_43:
                        cmp              r8, r9
                                                                                        je    .Lx29_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx29_44
                        cmp              eax, 99
                                                                                        je    .Lx29_44
                        cmp              eax, 13
                                                                                        jne   .Lx29_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx29_44
                                                                                        jmp   .Lx29_45
.Lx29_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx29_53
                        cmp              eax, 99
                                                                                        je    .Lx29_53
                        cmp              eax, 13
                                                                                        jne   .Lx29_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx29_53
                                                                                        jmp   .Lx29_46
.Lx29_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx29_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx29_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx29_51
.Lx29_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx29_47
                        cmp              eax, 99
                                                                                        je    .Lx29_47
                        cmp              eax, 13
                                                                                        jne   .Lx29_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx29_47
                                                                                        jmp   .Lx29_48
.Lx29_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx29_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx29_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx29_51
.Lx29_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx29_49
                        cmp              edx, 14
                                                                                        je    .Lx29_53
                                                                                        jmp   .Lx29_52
.Lx29_49:
                        cmp              edx, 14
                                                                                        je    .Lx29_52
                        cmp              ecx, 7
                                                                                        je    .Lx29_53
                        cmp              edx, 7
                                                                                        je    .Lx29_53
                        cmp              ecx, 6
                                                                                        jne   .Lx29_50
                        cmp              edx, 6
                                                                                        jne   .Lx29_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx29_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx29_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx29_51
                                                                                        jmp   .Lx29_52
.Lx29_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx29_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx29_53
.Lx29_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx29_54
.Lx29_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx29_54
.Lx29_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx29_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n18_var_ref_α
n17_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$fa0$2F1_ω
                                                                                        jmp   proc_$fa0$2F1_ω
n19_op11_β:
                                                                                        jmp   proc_$fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n21_lit_integer_α
.Lx33_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n22_call_proc_staged_α
.Lx34_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx36_21
.Lx36_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx36_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx36_23
.Lx36_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx36_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_24
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx36_25
.Lx36_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx36_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx36_1
                        lea              rcx, [rip + .Lx36_3]
                        lea              rdx, [rip + .Lx36_4]
                                                                                        jmp   rax
.Lx36_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx36_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx36_2
.Lx36_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx36_2
.Lx36_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx36_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx36_2
.Lx36_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx36_2
.Lx36_1:
                        call             rt_faildescr@PLT
.Lx36_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n23_suspend_α
n22_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "for/3"
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$fa0$2F1_γ
n23_suspend_β:
                                                                                        jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$fa0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 360]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n52_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx57_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx57_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx57_101
.Lx57_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx57_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n40_var_ref_α
n39_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx62_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx62_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_41
                        cmp              esi, 1
                                                                                        jne   .Lx62_55
                        mov              r8, rax
                                                                                        jmp   .Lx62_40
.Lx62_55:
                        cmp              esi, 2
                                                                                        jne   .Lx62_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_41
                        mov              r8, rax
                                                                                        jmp   .Lx62_40
.Lx62_56:
                        cmp              eax, 13
                                                                                        jne   .Lx62_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_41
                        cmp              rax, r8
                                                                                        je    .Lx62_41
                        mov              r8, rax
                                                                                        jmp   .Lx62_40
.Lx62_41:
                        lea              r9, [rbp + 496]
.Lx62_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx62_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_43
                        cmp              esi, 1
                                                                                        jne   .Lx62_57
                        mov              r9, rax
                                                                                        jmp   .Lx62_42
.Lx62_57:
                        cmp              esi, 2
                                                                                        jne   .Lx62_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_43
                        mov              r9, rax
                                                                                        jmp   .Lx62_42
.Lx62_58:
                        cmp              eax, 13
                                                                                        jne   .Lx62_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_43
                        cmp              rax, r9
                                                                                        je    .Lx62_43
                        mov              r9, rax
                                                                                        jmp   .Lx62_42
.Lx62_43:
                        cmp              r8, r9
                                                                                        je    .Lx62_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_44
                        cmp              eax, 99
                                                                                        je    .Lx62_44
                        cmp              eax, 13
                                                                                        jne   .Lx62_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx62_44
                                                                                        jmp   .Lx62_45
.Lx62_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_53
                        cmp              eax, 99
                                                                                        je    .Lx62_53
                        cmp              eax, 13
                                                                                        jne   .Lx62_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx62_53
                                                                                        jmp   .Lx62_46
.Lx62_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx62_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx62_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx62_51
.Lx62_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_47
                        cmp              eax, 99
                                                                                        je    .Lx62_47
                        cmp              eax, 13
                                                                                        jne   .Lx62_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx62_47
                                                                                        jmp   .Lx62_48
.Lx62_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx62_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx62_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx62_51
.Lx62_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx62_49
                        cmp              edx, 14
                                                                                        je    .Lx62_53
                                                                                        jmp   .Lx62_52
.Lx62_49:
                        cmp              edx, 14
                                                                                        je    .Lx62_52
                        cmp              ecx, 7
                                                                                        je    .Lx62_53
                        cmp              edx, 7
                                                                                        je    .Lx62_53
                        cmp              ecx, 6
                                                                                        jne   .Lx62_50
                        cmp              edx, 6
                                                                                        jne   .Lx62_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx62_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx62_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx62_51
                                                                                        jmp   .Lx62_52
.Lx62_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx62_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx62_53
.Lx62_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx62_54
.Lx62_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx62_54
.Lx62_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx62_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n46_var_ref_α
n44_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n47_lit_integer_α
.Lx66_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n49_call_proc_staged_α
.Lx69_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        mov              qword ptr [rbp + 384], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_20
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx73_21
.Lx73_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx73_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_22
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx73_23
.Lx73_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx73_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_24
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx73_25
.Lx73_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx73_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx73_1
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4]
                                                                                        jmp   rax
.Lx73_3:
                        mov              qword ptr [rbp + 392], rsp
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx73_5
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx73_2
.Lx73_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx73_2
.Lx73_4:
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx73_6
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx73_2
.Lx73_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx73_2
.Lx73_1:
                        call             rt_faildescr@PLT
.Lx73_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n51_var_α
n49_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 392]
                                                                                        jmp   qword ptr [rsp]
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "for/3"
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        lea              r8, [rbp + 128]
.Lx74_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx74_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_41
                        cmp              esi, 1
                                                                                        jne   .Lx74_55
                        mov              r8, rax
                                                                                        jmp   .Lx74_40
.Lx74_55:
                        cmp              esi, 2
                                                                                        jne   .Lx74_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx74_41
                        mov              r8, rax
                                                                                        jmp   .Lx74_40
.Lx74_56:
                        cmp              eax, 13
                                                                                        jne   .Lx74_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_41
                        cmp              rax, r8
                                                                                        je    .Lx74_41
                        mov              r8, rax
                                                                                        jmp   .Lx74_40
.Lx74_41:
                        lea              r9, [rbp + 144]
.Lx74_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx74_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_43
                        cmp              esi, 1
                                                                                        jne   .Lx74_57
                        mov              r9, rax
                                                                                        jmp   .Lx74_42
.Lx74_57:
                        cmp              esi, 2
                                                                                        jne   .Lx74_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx74_43
                        mov              r9, rax
                                                                                        jmp   .Lx74_42
.Lx74_58:
                        cmp              eax, 13
                                                                                        jne   .Lx74_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_43
                        cmp              rax, r9
                                                                                        je    .Lx74_43
                        mov              r9, rax
                                                                                        jmp   .Lx74_42
.Lx74_43:
                        cmp              r8, r9
                                                                                        je    .Lx74_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_44
                        cmp              eax, 99
                                                                                        je    .Lx74_44
                        cmp              eax, 13
                                                                                        jne   .Lx74_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx74_44
                                                                                        jmp   .Lx74_45
.Lx74_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_53
                        cmp              eax, 99
                                                                                        je    .Lx74_53
                        cmp              eax, 13
                                                                                        jne   .Lx74_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx74_53
                                                                                        jmp   .Lx74_46
.Lx74_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx74_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx74_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx74_51
.Lx74_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_47
                        cmp              eax, 99
                                                                                        je    .Lx74_47
                        cmp              eax, 13
                                                                                        jne   .Lx74_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx74_47
                                                                                        jmp   .Lx74_48
.Lx74_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx74_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx74_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx74_51
.Lx74_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx74_49
                        cmp              edx, 14
                                                                                        je    .Lx74_53
                                                                                        jmp   .Lx74_52
.Lx74_49:
                        cmp              edx, 14
                                                                                        je    .Lx74_52
                        cmp              ecx, 7
                                                                                        je    .Lx74_53
                        cmp              edx, 7
                                                                                        je    .Lx74_53
                        cmp              ecx, 6
                                                                                        jne   .Lx74_50
                        cmp              edx, 6
                                                                                        jne   .Lx74_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx74_51
                                                                                        jmp   .Lx74_52
.Lx74_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx74_53
.Lx74_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx74_54
.Lx74_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx74_54
.Lx74_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx74_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n53_op11_α
                                                                                        jmp   n52_suspend_α
n50_op11_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_suspend_α:
                        lea              rax, [rip + n52_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n52_suspend_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   proc_$disj0$2F1_ω
n53_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn81:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n55_lit_string_α
n54_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n56_op11_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn84:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n49_call_proc_staged_β
n56_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 584]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "for/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_for$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$fa0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$fa0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 616
                        mov              rdi, rsp
                        mov              ecx, 616
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 608], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx103_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx103_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx103_101
.Lx103_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx103_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n86_op11_α
n85_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        .section         .rodata
.Lrkfn105:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rbp + 288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n87_var_ref_α
n86_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n88_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        mov              qword ptr [rbp + 512], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx110_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx110_21
.Lx110_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx110_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx110_1
                        lea              rcx, [rip + .Lx110_3]
                        lea              rdx, [rip + .Lx110_4]
                                                                                        jmp   rax
.Lx110_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx110_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx110_2
.Lx110_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx110_2
.Lx110_4:
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx110_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx110_2
.Lx110_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx110_2
.Lx110_1:
                        call             rt_faildescr@PLT
.Lx110_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n91_op11_α
                                                                                        jmp   n90_var_α
n89_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "$fa0/1"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n92_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn114:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n93_var_ref_α
n91_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn116:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n89_call_proc_staged_β
n92_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
.Lx119_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx119_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        cmp              esi, 1
                                                                                        jne   .Lx119_55
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_55:
                        cmp              esi, 2
                                                                                        jne   .Lx119_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_56:
                        cmp              eax, 13
                                                                                        jne   .Lx119_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        cmp              rax, r8
                                                                                        je    .Lx119_41
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_41:
                        lea              r9, [rbp + 384]
.Lx119_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx119_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_43
                        cmp              esi, 1
                                                                                        jne   .Lx119_57
                        mov              r9, rax
                                                                                        jmp   .Lx119_42
.Lx119_57:
                        cmp              esi, 2
                                                                                        jne   .Lx119_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx119_43
                        mov              r9, rax
                                                                                        jmp   .Lx119_42
.Lx119_58:
                        cmp              eax, 13
                                                                                        jne   .Lx119_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_43
                        cmp              rax, r9
                                                                                        je    .Lx119_43
                        mov              r9, rax
                                                                                        jmp   .Lx119_42
.Lx119_43:
                        cmp              r8, r9
                                                                                        je    .Lx119_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_44
                        cmp              eax, 99
                                                                                        je    .Lx119_44
                        cmp              eax, 13
                                                                                        jne   .Lx119_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx119_44
                                                                                        jmp   .Lx119_45
.Lx119_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_53
                        cmp              eax, 99
                                                                                        je    .Lx119_53
                        cmp              eax, 13
                                                                                        jne   .Lx119_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx119_53
                                                                                        jmp   .Lx119_46
.Lx119_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx119_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx119_51
.Lx119_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_47
                        cmp              eax, 99
                                                                                        je    .Lx119_47
                        cmp              eax, 13
                                                                                        jne   .Lx119_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx119_47
                                                                                        jmp   .Lx119_48
.Lx119_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx119_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx119_51
.Lx119_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx119_49
                        cmp              edx, 14
                                                                                        je    .Lx119_53
                                                                                        jmp   .Lx119_52
.Lx119_49:
                        cmp              edx, 14
                                                                                        je    .Lx119_52
                        cmp              ecx, 7
                                                                                        je    .Lx119_53
                        cmp              edx, 7
                                                                                        je    .Lx119_53
                        cmp              ecx, 6
                                                                                        jne   .Lx119_50
                        cmp              edx, 6
                                                                                        jne   .Lx119_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx119_51
                                                                                        jmp   .Lx119_52
.Lx119_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx119_53
.Lx119_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx119_54
.Lx119_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx119_54
.Lx119_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx119_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n95_var_α
n94_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n96_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn123:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n97_lit_string_α
n96_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n98_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn126:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n100_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx130_21
.Lx130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx130_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx130_1
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx130_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx130_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_1:
                        call             rt_faildescr@PLT
.Lx130_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n101_move_label_α
n100_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n101_move_label_α:
                        lea              rax, [rip + n100_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n102_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 608]
                        add              rsp, 616
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 608]
                        add              rsp, 616
                        ret
                        .section         .note.GNU-stack,"",@progbits
