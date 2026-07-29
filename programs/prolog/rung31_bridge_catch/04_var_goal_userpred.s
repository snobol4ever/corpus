                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F1_α
proc_$call$2F1_α:
                        .global          proc_$call$2F1_α
                        .global          proc_$call$2F1_β
                        .global          proc_$call$2F1_γ
                        .global          proc_$call$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call$2F1_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx5_60:
                        .section         .rodata
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n2_suspend_α
n1_call_builtin_gen_β:
                                                                                        jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n2_suspend_β:
                                                                                        jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_double$2F2_α
proc_double$2F2_α:
                        .global          proc_double$2F2_α
                        .global          proc_double$2F2_β
                        .global          proc_double$2F2_γ
                        .global          proc_double$2F2_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_double$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx23_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx23_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx23_101
.Lx23_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx23_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_double$2F2_ω
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   proc_double$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx28_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx28_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx28_41
                        cmp              esi, 1
                                                                                        jne   .Lx28_55
                        mov              r8, rax
                                                                                        jmp   .Lx28_40
.Lx28_55:
                        cmp              esi, 2
                                                                                        jne   .Lx28_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx28_41
                        mov              r8, rax
                                                                                        jmp   .Lx28_40
.Lx28_56:
                        cmp              eax, 13
                                                                                        jne   .Lx28_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx28_41
                        cmp              rax, r8
                                                                                        je    .Lx28_41
                        mov              r8, rax
                                                                                        jmp   .Lx28_40
.Lx28_41:
                        lea              r9, [rbp + 416]
.Lx28_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx28_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx28_43
                        cmp              esi, 1
                                                                                        jne   .Lx28_57
                        mov              r9, rax
                                                                                        jmp   .Lx28_42
.Lx28_57:
                        cmp              esi, 2
                                                                                        jne   .Lx28_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx28_43
                        mov              r9, rax
                                                                                        jmp   .Lx28_42
.Lx28_58:
                        cmp              eax, 13
                                                                                        jne   .Lx28_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx28_43
                        cmp              rax, r9
                                                                                        je    .Lx28_43
                        mov              r9, rax
                                                                                        jmp   .Lx28_42
.Lx28_43:
                        cmp              r8, r9
                                                                                        je    .Lx28_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx28_44
                        cmp              eax, 99
                                                                                        je    .Lx28_44
                        cmp              eax, 13
                                                                                        jne   .Lx28_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx28_44
                                                                                        jmp   .Lx28_45
.Lx28_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx28_53
                        cmp              eax, 99
                                                                                        je    .Lx28_53
                        cmp              eax, 13
                                                                                        jne   .Lx28_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx28_53
                                                                                        jmp   .Lx28_46
.Lx28_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx28_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx28_53
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
                                                                                        jmp   .Lx28_51
.Lx28_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx28_47
                        cmp              eax, 99
                                                                                        je    .Lx28_47
                        cmp              eax, 13
                                                                                        jne   .Lx28_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx28_47
                                                                                        jmp   .Lx28_48
.Lx28_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx28_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx28_53
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
                                                                                        jmp   .Lx28_51
.Lx28_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx28_49
                        cmp              edx, 14
                                                                                        je    .Lx28_53
                                                                                        jmp   .Lx28_52
.Lx28_49:
                        cmp              edx, 14
                                                                                        je    .Lx28_52
                        cmp              ecx, 7
                                                                                        je    .Lx28_53
                        cmp              edx, 7
                                                                                        je    .Lx28_53
                        cmp              ecx, 6
                                                                                        jne   .Lx28_50
                        cmp              edx, 6
                                                                                        jne   .Lx28_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx28_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx28_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx28_51
                                                                                        jmp   .Lx28_52
.Lx28_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx28_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx28_53
.Lx28_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx28_54
.Lx28_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx28_54
.Lx28_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx28_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_double$2F2_ω
                                                                                        jmp   proc_double$2F2_ω
n13_op11_β:
                                                                                        jmp   proc_double$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx34_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx34_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        cmp              esi, 1
                                                                                        jne   .Lx34_55
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_55:
                        cmp              esi, 2
                                                                                        jne   .Lx34_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_56:
                        cmp              eax, 13
                                                                                        jne   .Lx34_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        cmp              rax, r8
                                                                                        je    .Lx34_41
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_41:
                        lea              r9, [rbp + 336]
.Lx34_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx34_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        cmp              esi, 1
                                                                                        jne   .Lx34_57
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_57:
                        cmp              esi, 2
                                                                                        jne   .Lx34_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_58:
                        cmp              eax, 13
                                                                                        jne   .Lx34_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        cmp              rax, r9
                                                                                        je    .Lx34_43
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_43:
                        cmp              r8, r9
                                                                                        je    .Lx34_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_44
                        cmp              eax, 99
                                                                                        je    .Lx34_44
                        cmp              eax, 13
                                                                                        jne   .Lx34_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx34_44
                                                                                        jmp   .Lx34_45
.Lx34_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_53
                        cmp              eax, 99
                                                                                        je    .Lx34_53
                        cmp              eax, 13
                                                                                        jne   .Lx34_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_46
.Lx34_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx34_53
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
                                                                                        jmp   .Lx34_51
.Lx34_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_47
                        cmp              eax, 99
                                                                                        je    .Lx34_47
                        cmp              eax, 13
                                                                                        jne   .Lx34_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx34_47
                                                                                        jmp   .Lx34_48
.Lx34_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx34_53
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
                                                                                        jmp   .Lx34_51
.Lx34_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx34_49
                        cmp              edx, 14
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_52
.Lx34_49:
                        cmp              edx, 14
                                                                                        je    .Lx34_52
                        cmp              ecx, 7
                                                                                        je    .Lx34_53
                        cmp              edx, 7
                                                                                        je    .Lx34_53
                        cmp              ecx, 6
                                                                                        jne   .Lx34_50
                        cmp              edx, 6
                                                                                        jne   .Lx34_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx34_51
                                                                                        jmp   .Lx34_52
.Lx34_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx34_53
.Lx34_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx34_54
.Lx34_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx34_54
.Lx34_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx34_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n16_var_ref_α
n15_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n19_op11_α
.Lx39_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n20_op11_α
n19_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n21_move_label_α
n20_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_move_label_α:
                        lea              rax, [rip + n13_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_double$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n22_disjunction_β:
                                                                                        jmp   proc_double$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_double$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_double$2F2_β:
                                                                                        jmp   n22_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_double$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 504]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_double$2F2_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_double$2F2_dcα:
                        pop              r11
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 496], r11
                        lea              rax, [rip + .Lx46_2]
                        mov              qword ptr [rbp + 504], rax
                        lea              rax, [rip + .Lx46_3]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 464
                        mov              edx, 496
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_double$2F2_α_body
.Lx46_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx46_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "double/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_double$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_double$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
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
n47_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx66_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx66_101
.Lx66_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx66_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n48_var_ref_α
n47_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n50_lit_integer_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "double"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n51_var_ref_α
.Lx70_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n53_op11_α
n52_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
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
                        lea              r9, [rbp + 400]
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n55_var_ref_α
n53_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
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
n54_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx78_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx78_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx78_101
.Lx78_100:
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx78_101:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n57_var_ref_α
n56_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n58_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx82_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx82_21
.Lx82_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx82_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx82_1
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4]
                                                                                        jmp   rax
.Lx82_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx82_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx82_2
.Lx82_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx82_2
.Lx82_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx82_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx82_2
.Lx82_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx82_2
.Lx82_1:
                        call             rt_faildescr@PLT
.Lx82_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n60_op11_α
                                                                                        jmp   n59_var_α
n58_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn86:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n60_op11_α
n60_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n62_lit_string_α
n61_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n63_op11_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn91:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n64_move_label_α
n63_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_move_label_α:
                        lea              rax, [rip + n54_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n65_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n65_disjunction_α
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
