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
                        .globl           proc_t$2F2_α
proc_t$2F2_α:
                        .global          proc_t$2F2_α
                        .global          proc_t$2F2_β
                        .global          proc_t$2F2_γ
                        .global          proc_t$2F2_ω
                        sub              rsp, 1648
                        mov              [rsp + 1624], rcx
                        mov              [rsp + 1632], rdx
                        mov              [rsp + 1640], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1616
                        call             rt_jmp_frame_lexprep2@PLT
proc_t$2F2_α_body:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx54_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx54_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx54_101
.Lx54_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx54_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_t$2F2_ω
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   proc_t$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1424]
                        lea              r8, [rbp + 1424]
.Lx59_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx59_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx59_41
                        cmp              esi, 1
                                                                                        jne   .Lx59_55
                        mov              r8, rax
                                                                                        jmp   .Lx59_40
.Lx59_55:
                        cmp              esi, 2
                                                                                        jne   .Lx59_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx59_41
                        mov              r8, rax
                                                                                        jmp   .Lx59_40
.Lx59_56:
                        cmp              eax, 13
                                                                                        jne   .Lx59_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx59_41
                        cmp              rax, r8
                                                                                        je    .Lx59_41
                        mov              r8, rax
                                                                                        jmp   .Lx59_40
.Lx59_41:
                        lea              r9, [rbp + 1440]
.Lx59_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx59_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx59_43
                        cmp              esi, 1
                                                                                        jne   .Lx59_57
                        mov              r9, rax
                                                                                        jmp   .Lx59_42
.Lx59_57:
                        cmp              esi, 2
                                                                                        jne   .Lx59_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx59_43
                        mov              r9, rax
                                                                                        jmp   .Lx59_42
.Lx59_58:
                        cmp              eax, 13
                                                                                        jne   .Lx59_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx59_43
                        cmp              rax, r9
                                                                                        je    .Lx59_43
                        mov              r9, rax
                                                                                        jmp   .Lx59_42
.Lx59_43:
                        cmp              r8, r9
                                                                                        je    .Lx59_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx59_44
                        cmp              eax, 99
                                                                                        je    .Lx59_44
                        cmp              eax, 13
                                                                                        jne   .Lx59_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx59_44
                                                                                        jmp   .Lx59_45
.Lx59_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx59_53
                        cmp              eax, 99
                                                                                        je    .Lx59_53
                        cmp              eax, 13
                                                                                        jne   .Lx59_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx59_53
                                                                                        jmp   .Lx59_46
.Lx59_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx59_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx59_53
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
                                                                                        jmp   .Lx59_51
.Lx59_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx59_47
                        cmp              eax, 99
                                                                                        je    .Lx59_47
                        cmp              eax, 13
                                                                                        jne   .Lx59_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx59_47
                                                                                        jmp   .Lx59_48
.Lx59_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx59_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx59_53
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
                                                                                        jmp   .Lx59_51
.Lx59_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx59_49
                        cmp              edx, 14
                                                                                        je    .Lx59_53
                                                                                        jmp   .Lx59_52
.Lx59_49:
                        cmp              edx, 14
                                                                                        je    .Lx59_52
                        cmp              ecx, 7
                                                                                        je    .Lx59_53
                        cmp              edx, 7
                                                                                        je    .Lx59_53
                        cmp              ecx, 6
                                                                                        jne   .Lx59_50
                        cmp              edx, 6
                                                                                        jne   .Lx59_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx59_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx59_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx59_51
                                                                                        jmp   .Lx59_52
.Lx59_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx59_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx59_53
.Lx59_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx59_54
.Lx59_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx59_54
.Lx59_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx59_54:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_t$2F2_ω
                                                                                        jmp   proc_t$2F2_ω
n13_op11_β:
                                                                                        jmp   proc_t$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1344]
                        lea              r8, [rbp + 1344]
.Lx65_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_41
                        cmp              esi, 1
                                                                                        jne   .Lx65_55
                        mov              r8, rax
                                                                                        jmp   .Lx65_40
.Lx65_55:
                        cmp              esi, 2
                                                                                        jne   .Lx65_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_41
                        mov              r8, rax
                                                                                        jmp   .Lx65_40
.Lx65_56:
                        cmp              eax, 13
                                                                                        jne   .Lx65_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_41
                        cmp              rax, r8
                                                                                        je    .Lx65_41
                        mov              r8, rax
                                                                                        jmp   .Lx65_40
.Lx65_41:
                        lea              r9, [rbp + 1360]
.Lx65_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_43
                        cmp              esi, 1
                                                                                        jne   .Lx65_57
                        mov              r9, rax
                                                                                        jmp   .Lx65_42
.Lx65_57:
                        cmp              esi, 2
                                                                                        jne   .Lx65_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_43
                        mov              r9, rax
                                                                                        jmp   .Lx65_42
.Lx65_58:
                        cmp              eax, 13
                                                                                        jne   .Lx65_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_43
                        cmp              rax, r9
                                                                                        je    .Lx65_43
                        mov              r9, rax
                                                                                        jmp   .Lx65_42
.Lx65_43:
                        cmp              r8, r9
                                                                                        je    .Lx65_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_44
                        cmp              eax, 99
                                                                                        je    .Lx65_44
                        cmp              eax, 13
                                                                                        jne   .Lx65_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx65_44
                                                                                        jmp   .Lx65_45
.Lx65_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_53
                        cmp              eax, 99
                                                                                        je    .Lx65_53
                        cmp              eax, 13
                                                                                        jne   .Lx65_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx65_53
                                                                                        jmp   .Lx65_46
.Lx65_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx65_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx65_53
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
                                                                                        jmp   .Lx65_51
.Lx65_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_47
                        cmp              eax, 99
                                                                                        je    .Lx65_47
                        cmp              eax, 13
                                                                                        jne   .Lx65_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx65_47
                                                                                        jmp   .Lx65_48
.Lx65_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx65_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx65_53
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
                                                                                        jmp   .Lx65_51
.Lx65_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx65_49
                        cmp              edx, 14
                                                                                        je    .Lx65_53
                                                                                        jmp   .Lx65_52
.Lx65_49:
                        cmp              edx, 14
                                                                                        je    .Lx65_52
                        cmp              ecx, 7
                                                                                        je    .Lx65_53
                        cmp              edx, 7
                                                                                        je    .Lx65_53
                        cmp              ecx, 6
                                                                                        jne   .Lx65_50
                        cmp              edx, 6
                                                                                        jne   .Lx65_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx65_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx65_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx65_51
                                                                                        jmp   .Lx65_52
.Lx65_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx65_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx65_53
.Lx65_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx65_54
.Lx65_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx65_54
.Lx65_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx65_54:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n16_lit_string_α
n15_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n17_var_ref_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n21_lit_string_α
                                                                                        jmp   n20_op11_α
n19_op11_β:
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx72_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx72_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx72_101
.Lx72_100:
                        lea              rdi, [rbp + 1184]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx72_101:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n21_lit_string_α
                                                                                        jmp   n22_var_ref_α
n20_op11_β:
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n23_var_ref_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α:
                        mov              qword ptr [rbp + 1280], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_20
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx79_21
.Lx79_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        call             rt_arg_stage@PLT
.Lx79_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx79_1
                        lea              rcx, [rip + .Lx79_3]
                        lea              rdx, [rip + .Lx79_4]
                                                                                        jmp   rax
.Lx79_3:
                        mov              qword ptr [rbp + 1288], rsp
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx79_5
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_4:
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx79_6
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_1:
                        call             rt_faildescr@PLT
.Lx79_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n26_var_ref_α
n24_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1288]
                                                                                        jmp   qword ptr [rsp]
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n28_op11_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn84:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n21_lit_string_α
                                                                                        jmp   n26_var_ref_α
n27_op11_β:
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n30_op11_α
n28_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn87:               .string          "$tt_var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n32_var_ref_α
                                                                                        jmp   n31_lit_string_α
n29_op11_β:
                                                                                        jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn89:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n33_lit_string_α
n30_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n34_var_ref_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n36_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n38_var_ref_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn98:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n39_suspend_α
n36_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n40_op11_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "success"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t$2F2_γ
n39_suspend_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n42_op11_α
n40_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn108:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n33_lit_string_α
n42_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n45_op11_α
n44_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx112_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              esi, 1
                                                                                        jne   .Lx112_55
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_55:
                        cmp              esi, 2
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_56:
                        cmp              eax, 13
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              rax, r8
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_41:
                        lea              r9, [rbp + 640]
.Lx112_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              esi, 1
                                                                                        jne   .Lx112_57
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_57:
                        cmp              esi, 2
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_58:
                        cmp              eax, 13
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              rax, r9
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_43:
                        cmp              r8, r9
                                                                                        je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_44
                        cmp              eax, 99
                                                                                        je    .Lx112_44
                        cmp              eax, 13
                                                                                        jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx112_44
                                                                                        jmp   .Lx112_45
.Lx112_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_53
                        cmp              eax, 99
                                                                                        je    .Lx112_53
                        cmp              eax, 13
                                                                                        jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_46
.Lx112_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_47
                        cmp              eax, 99
                                                                                        je    .Lx112_47
                        cmp              eax, 13
                                                                                        jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_47
                                                                                        jmp   .Lx112_48
.Lx112_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx112_49
                        cmp              edx, 14
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_52
.Lx112_49:
                        cmp              edx, 14
                                                                                        je    .Lx112_52
                        cmp              ecx, 7
                                                                                        je    .Lx112_53
                        cmp              edx, 7
                                                                                        je    .Lx112_53
                        cmp              ecx, 6
                                                                                        jne   .Lx112_50
                        cmp              edx, 6
                                                                                        jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx112_51
                                                                                        jmp   .Lx112_52
.Lx112_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
.Lx112_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx112_54
.Lx112_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx112_54
.Lx112_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx112_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n46_lit_string_α
n45_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n47_var_ref_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n49_var_ref_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "perm"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n51_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_t$2F2_ω
                                                                                        jmp   n52_op11_α
n51_op11_β:
                                                                                        jmp   proc_t$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n53_op11_α
n52_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn124:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n33_lit_string_α
n53_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1488]
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1624]
                        mov              rbp, [rbp + 1640]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F2_ω:
                        mov              rax, [rbp + 1632]
                        lea              rsp, [rbp + 1648]
                        mov              rbp, [rbp + 1640]
                                                                                        jmp   rax
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
.Lstartup_pname1:       .string          "t/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_t$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1616
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
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
                        sub              rsp, 2408
                        mov              rdi, rsp
                        mov              ecx, 2408
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2400], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx193_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx193_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx193_101
.Lx193_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx193_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n126_lit_string_α
n125_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n127_lit_string_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "/tmp/rung79_w.txt"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n128_var_ref_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lrkfn199:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rbp + 2208]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n130_lit_string_α
n129_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n132_lit_string_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "getchar_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
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
n131_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n133_var_ref_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "get_char"
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n136_call_proc_staged_α
n135_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              qword ptr [rbp + 2016], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx209_20
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx209_21
.Lx209_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx209_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx209_22
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx209_23
.Lx209_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        call             rt_arg_stage@PLT
.Lx209_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx209_1
                        lea              rcx, [rip + .Lx209_3]
                        lea              rdx, [rip + .Lx209_4]
                                                                                        jmp   rax
.Lx209_3:
                        mov              qword ptr [rbp + 2024], rsp
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx209_5
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx209_2
.Lx209_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx209_2
.Lx209_4:
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx209_6
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx209_2
.Lx209_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx209_2
.Lx209_1:
                        call             rt_faildescr@PLT
.Lx209_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n137_lit_string_α
n136_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2024]
                                                                                        jmp   qword ptr [rsp]
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n138_lit_string_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "getcode_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n139_var_ref_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "get_code"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n142_call_proc_staged_α
n141_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        mov              qword ptr [rbp + 1792], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx218_20
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx218_21
.Lx218_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx218_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx218_22
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx218_23
.Lx218_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx218_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx218_1
                        lea              rcx, [rip + .Lx218_3]
                        lea              rdx, [rip + .Lx218_4]
                                                                                        jmp   rax
.Lx218_3:
                        mov              qword ptr [rbp + 1800], rsp
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx218_5
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx218_2
.Lx218_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx218_2
.Lx218_4:
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx218_6
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx218_2
.Lx218_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx218_2
.Lx218_1:
                        call             rt_faildescr@PLT
.Lx218_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_proc_staged_β
                                                                                        jmp   n143_lit_string_α
n142_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   qword ptr [rsp]
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n144_lit_string_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "peekchar_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n145_var_ref_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "peek_char"
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n147_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n148_call_proc_staged_α
n147_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        mov              qword ptr [rbp + 1568], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_20
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx227_21
.Lx227_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx227_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_22
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx227_23
.Lx227_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        call             rt_arg_stage@PLT
.Lx227_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx227_1
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4]
                                                                                        jmp   rax
.Lx227_3:
                        mov              qword ptr [rbp + 1576], rsp
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx227_5
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_4:
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx227_6
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_1:
                        call             rt_faildescr@PLT
.Lx227_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n142_call_proc_staged_β
                                                                                        jmp   n149_lit_string_α
n148_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1576]
                                                                                        jmp   qword ptr [rsp]
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n150_lit_string_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "getbyte_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n151_var_ref_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "get_byte"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n154_call_proc_staged_α
n153_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        mov              qword ptr [rbp + 1344], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_20
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx236_21
.Lx236_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        call             rt_arg_stage@PLT
.Lx236_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_22
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx236_23
.Lx236_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        call             rt_arg_stage@PLT
.Lx236_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx236_1
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_3:
                        mov              qword ptr [rbp + 1352], rsp
                        mov              rax, qword ptr [rbp + 1344]
                        test             rax, rax
                                                                                        jne   .Lx236_5
                        mov              qword ptr [rbp + 1344], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_4:
                        mov              rax, qword ptr [rbp + 1344]
                        test             rax, rax
                                                                                        jne   .Lx236_6
                        mov              qword ptr [rbp + 1344], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_1:
                        call             rt_faildescr@PLT
.Lx236_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n148_call_proc_staged_β
                                                                                        jmp   n155_lit_string_α
n154_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1352]
                                                                                        jmp   qword ptr [rsp]
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n156_lit_string_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "ateof_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n157_var_ref_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "at_end_of_stream"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n158_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n159_call_proc_staged_α
n158_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_proc_staged_α:
                        mov              qword ptr [rbp + 1152], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_20
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx243_21
.Lx243_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_arg_stage@PLT
.Lx243_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_22
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx243_23
.Lx243_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_arg_stage@PLT
.Lx243_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx243_1
                        lea              rcx, [rip + .Lx243_3]
                        lea              rdx, [rip + .Lx243_4]
                                                                                        jmp   rax
.Lx243_3:
                        mov              qword ptr [rbp + 1160], rsp
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax
                                                                                        jne   .Lx243_5
                        mov              qword ptr [rbp + 1152], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx243_2
.Lx243_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx243_2
.Lx243_4:
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax
                                                                                        jne   .Lx243_6
                        mov              qword ptr [rbp + 1152], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx243_2
.Lx243_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx243_2
.Lx243_1:
                        call             rt_faildescr@PLT
.Lx243_2:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n160_var_ref_α
n159_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1160]
                                                                                        jmp   qword ptr [rsp]
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n161_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn247:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_proc_staged_β
                                                                                        jmp   n162_lit_string_α
n161_op11_β:
                                                                                        jmp   n159_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n163_lit_string_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "/tmp/rung79_w.txt"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n164_var_ref_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn253:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 960]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_proc_staged_β
                                                                                        jmp   n166_lit_string_α
n165_op11_β:
                                                                                        jmp   n159_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n167_lit_string_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "putchar_on_read"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n168_var_ref_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "put_char"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n170_op11_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n170_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n171_call_proc_staged_α
n170_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              qword ptr [rbp + 768], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx261_20
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx261_21
.Lx261_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             rt_arg_stage@PLT
.Lx261_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx261_22
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx261_23
.Lx261_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        call             rt_arg_stage@PLT
.Lx261_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx261_1
                        lea              rcx, [rip + .Lx261_3]
                        lea              rdx, [rip + .Lx261_4]
                                                                                        jmp   rax
.Lx261_3:
                        mov              qword ptr [rbp + 776], rsp
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx261_5
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx261_2
.Lx261_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx261_2
.Lx261_4:
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx261_6
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx261_2
.Lx261_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx261_2
.Lx261_1:
                        call             rt_faildescr@PLT
.Lx261_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_proc_staged_β
                                                                                        jmp   n172_lit_string_α
n171_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 776]
                                                                                        jmp   qword ptr [rsp]
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n173_lit_string_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "putcode_on_read"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n174_var_ref_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "put_code"
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n175_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n176_op11_α
.Lx266_0:
                        .quad            121
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n177_call_proc_staged_α
n176_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx269_21
.Lx269_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx269_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_22
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx269_23
.Lx269_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx269_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx269_1
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4]
                                                                                        jmp   rax
.Lx269_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx269_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx269_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_1:
                        call             rt_faildescr@PLT
.Lx269_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_proc_staged_β
                                                                                        jmp   n178_lit_string_α
n177_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n179_lit_string_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "putbyte_on_read"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n180_var_ref_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "put_byte"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n182_op11_α
.Lx274_0:
                        .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n182_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n131_op11_α
                                                                                        jmp   n183_call_proc_staged_α
n182_op11_β:
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx277_21
.Lx277_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx277_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_22
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx277_23
.Lx277_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx277_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4]
                                                                                        jmp   rax
.Lx277_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx277_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx277_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_1:
                        call             rt_faildescr@PLT
.Lx277_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n177_call_proc_staged_β
                                                                                        jmp   n184_var_ref_α
n183_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n185_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn281:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n186_lit_string_α
n185_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n187_op11_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn284:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n188_lit_string_α
n187_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n189_op11_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn287:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n190_call_proc_staged_α
n189_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n190_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx289_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx289_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx289_3]
                        lea              rdx, [rip + .Lx289_4]
                                                                                        jmp   rax
.Lx289_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_1:
                        call             rt_faildescr@PLT
.Lx289_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n191_move_label_α
n190_call_proc_staged_β:
                                                                                        jmp   n183_call_proc_staged_β
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n191_move_label_α:
                        lea              rax, [rip + n190_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n192_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n192_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n192_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2400]
                        add              rsp, 2408
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2400]
                        add              rsp, 2408
                        ret
                        .section         .note.GNU-stack,"",@progbits
