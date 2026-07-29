                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clause$2F2_α
proc_clause$2F2_α:
                        .global          proc_clause$2F2_α
                        .global          proc_clause$2F2_β
                        .global          proc_clause$2F2_γ
                        .global          proc_clause$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_clause$2F2_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx8_60:
                        .section         .rodata
.Lbynamegenfn3:         .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_clause$2F2_ω
                                                                                        jmp   n3_suspend_α
n2_call_builtin_gen_β:
                                                                                        jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_clause$2F2_γ
n3_suspend_β:
                                                                                        jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_clause$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_run$2F2_α
proc_run$2F2_α:
                        .global          proc_run$2F2_α
                        .global          proc_run$2F2_β
                        .global          proc_run$2F2_γ
                        .global          proc_run$2F2_ω
                        sub              rsp, 784
                        mov              [rsp + 760], rcx
                        mov              [rsp + 768], rdx
                        mov              [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 752
                        call             rt_jmp_frame_lexprep2@PLT
proc_run$2F2_α_body:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx32_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx32_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx32_101
.Lx32_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx32_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_run$2F2_ω
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   proc_run$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx37_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx37_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx37_41
                        cmp              esi, 1
                                                                                        jne   .Lx37_55
                        mov              r8, rax
                                                                                        jmp   .Lx37_40
.Lx37_55:
                        cmp              esi, 2
                                                                                        jne   .Lx37_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx37_41
                        mov              r8, rax
                                                                                        jmp   .Lx37_40
.Lx37_56:
                        cmp              eax, 13
                                                                                        jne   .Lx37_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx37_41
                        cmp              rax, r8
                                                                                        je    .Lx37_41
                        mov              r8, rax
                                                                                        jmp   .Lx37_40
.Lx37_41:
                        lea              r9, [rbp + 624]
.Lx37_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx37_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx37_43
                        cmp              esi, 1
                                                                                        jne   .Lx37_57
                        mov              r9, rax
                                                                                        jmp   .Lx37_42
.Lx37_57:
                        cmp              esi, 2
                                                                                        jne   .Lx37_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx37_43
                        mov              r9, rax
                                                                                        jmp   .Lx37_42
.Lx37_58:
                        cmp              eax, 13
                                                                                        jne   .Lx37_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx37_43
                        cmp              rax, r9
                                                                                        je    .Lx37_43
                        mov              r9, rax
                                                                                        jmp   .Lx37_42
.Lx37_43:
                        cmp              r8, r9
                                                                                        je    .Lx37_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx37_44
                        cmp              eax, 99
                                                                                        je    .Lx37_44
                        cmp              eax, 13
                                                                                        jne   .Lx37_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx37_44
                                                                                        jmp   .Lx37_45
.Lx37_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx37_53
                        cmp              eax, 99
                                                                                        je    .Lx37_53
                        cmp              eax, 13
                                                                                        jne   .Lx37_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx37_53
                                                                                        jmp   .Lx37_46
.Lx37_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx37_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx37_53
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
                                                                                        jmp   .Lx37_51
.Lx37_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx37_47
                        cmp              eax, 99
                                                                                        je    .Lx37_47
                        cmp              eax, 13
                                                                                        jne   .Lx37_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx37_47
                                                                                        jmp   .Lx37_48
.Lx37_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx37_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx37_53
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
                                                                                        jmp   .Lx37_51
.Lx37_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx37_49
                        cmp              edx, 14
                                                                                        je    .Lx37_53
                                                                                        jmp   .Lx37_52
.Lx37_49:
                        cmp              edx, 14
                                                                                        je    .Lx37_52
                        cmp              ecx, 7
                                                                                        je    .Lx37_53
                        cmp              edx, 7
                                                                                        je    .Lx37_53
                        cmp              ecx, 6
                                                                                        jne   .Lx37_50
                        cmp              edx, 6
                                                                                        jne   .Lx37_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx37_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx37_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx37_51
                                                                                        jmp   .Lx37_52
.Lx37_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx37_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx37_53
.Lx37_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx37_54
.Lx37_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx37_54
.Lx37_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx37_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
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
                                                                                        je    proc_run$2F2_ω
                                                                                        jmp   proc_run$2F2_ω
n16_op11_β:
                                                                                        jmp   proc_run$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx43_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        cmp              esi, 1
                                                                                        jne   .Lx43_55
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_55:
                        cmp              esi, 2
                                                                                        jne   .Lx43_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_56:
                        cmp              eax, 13
                                                                                        jne   .Lx43_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        cmp              rax, r8
                                                                                        je    .Lx43_41
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_41:
                        lea              r9, [rbp + 544]
.Lx43_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        cmp              esi, 1
                                                                                        jne   .Lx43_57
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_57:
                        cmp              esi, 2
                                                                                        jne   .Lx43_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_58:
                        cmp              eax, 13
                                                                                        jne   .Lx43_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        cmp              rax, r9
                                                                                        je    .Lx43_43
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_43:
                        cmp              r8, r9
                                                                                        je    .Lx43_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_44
                        cmp              eax, 99
                                                                                        je    .Lx43_44
                        cmp              eax, 13
                                                                                        jne   .Lx43_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx43_44
                                                                                        jmp   .Lx43_45
.Lx43_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_53
                        cmp              eax, 99
                                                                                        je    .Lx43_53
                        cmp              eax, 13
                                                                                        jne   .Lx43_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx43_53
                                                                                        jmp   .Lx43_46
.Lx43_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx43_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx43_53
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
                                                                                        jmp   .Lx43_51
.Lx43_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_47
                        cmp              eax, 99
                                                                                        je    .Lx43_47
                        cmp              eax, 13
                                                                                        jne   .Lx43_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx43_47
                                                                                        jmp   .Lx43_48
.Lx43_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx43_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx43_53
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
                                                                                        jmp   .Lx43_51
.Lx43_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx43_49
                        cmp              edx, 14
                                                                                        je    .Lx43_53
                                                                                        jmp   .Lx43_52
.Lx43_49:
                        cmp              edx, 14
                                                                                        je    .Lx43_52
                        cmp              ecx, 7
                                                                                        je    .Lx43_53
                        cmp              edx, 7
                                                                                        je    .Lx43_53
                        cmp              ecx, 6
                                                                                        jne   .Lx43_50
                        cmp              edx, 6
                                                                                        jne   .Lx43_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx43_51
                                                                                        jmp   .Lx43_52
.Lx43_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx43_53
.Lx43_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx43_54
.Lx43_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx43_54
.Lx43_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx43_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n19_var_ref_α
n18_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n21_lit_integer_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n22_op11_α
.Lx47_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn49:               .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 416]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n23_var_ref_α
n22_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n25_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α:
                        mov              qword ptr [rbp + 336], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx55_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx55_21
.Lx55_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx55_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx55_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx55_23
.Lx55_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx55_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx55_1
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4]
                                                                                        jmp   rax
.Lx55_3:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx55_5
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_4:
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx55_6
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_1:
                        call             rt_faildescr@PLT
.Lx55_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n26_var_ref_α
n25_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 344]
                                                                                        jmp   qword ptr [rsp]
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n30_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx65_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx65_21
.Lx65_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx65_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx65_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx65_23
.Lx65_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx65_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx65_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx65_25
.Lx65_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx65_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx65_26
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx65_27
.Lx65_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx65_27:
                        mov              edi, 2
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx65_1
                        lea              rcx, [rip + .Lx65_3]
                        lea              rdx, [rip + .Lx65_4]
                                                                                        jmp   rax
.Lx65_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx65_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx65_2
.Lx65_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx65_2
.Lx65_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx65_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx65_2
.Lx65_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx65_2
.Lx65_1:
                        call             rt_faildescr@PLT
.Lx65_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n25_call_proc_staged_β
                                                                                        jmp   n31_suspend_α
n30_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "run/4"
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_run$2F2_γ
n31_suspend_β:
                                                                                        jmp   n30_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_run$2F2_res]
                        push             rax
                        mov              rax, [rbp + 760]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_ω:
                        mov              rax, [rbp + 768]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_run$2F4_α
proc_run$2F4_α:
                        .global          proc_run$2F4_α
                        .global          proc_run$2F4_β
                        .global          proc_run$2F4_γ
                        .global          proc_run$2F4_ω
                        sub              rsp, 1696
                        mov              [rsp + 1672], rcx
                        mov              [rsp + 1680], rdx
                        mov              [rsp + 1688], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1664
                        call             rt_jmp_frame_lexprep2@PLT
proc_run$2F4_α_body:
                        lea              rax, [rip + n100_suspend_β]
                        mov              qword ptr [rbp + 1536], rax
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx120_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx120_101
.Lx120_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx120_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_run$2F4_ω
                                                                                        jmp   n69_var_ref_α
n68_op11_β:
                                                                                        jmp   proc_run$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1472]
                        lea              r8, [rbp + 1472]
.Lx125_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx125_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              esi, 1
                                                                                        jne   .Lx125_55
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_55:
                        cmp              esi, 2
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_56:
                        cmp              eax, 13
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              rax, r8
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_41:
                        lea              r9, [rbp + 1488]
.Lx125_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx125_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        cmp              esi, 1
                                                                                        jne   .Lx125_57
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_57:
                        cmp              esi, 2
                                                                                        jne   .Lx125_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_58:
                        cmp              eax, 13
                                                                                        jne   .Lx125_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        cmp              rax, r9
                                                                                        je    .Lx125_43
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_43:
                        cmp              r8, r9
                                                                                        je    .Lx125_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_44
                        cmp              eax, 99
                                                                                        je    .Lx125_44
                        cmp              eax, 13
                                                                                        jne   .Lx125_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx125_44
                                                                                        jmp   .Lx125_45
.Lx125_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_53
                        cmp              eax, 99
                                                                                        je    .Lx125_53
                        cmp              eax, 13
                                                                                        jne   .Lx125_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_46
.Lx125_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx125_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx125_53
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
                                                                                        jmp   .Lx125_51
.Lx125_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_47
                        cmp              eax, 99
                                                                                        je    .Lx125_47
                        cmp              eax, 13
                                                                                        jne   .Lx125_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx125_47
                                                                                        jmp   .Lx125_48
.Lx125_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx125_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx125_53
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
                                                                                        jmp   .Lx125_51
.Lx125_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx125_49
                        cmp              edx, 14
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_52
.Lx125_49:
                        cmp              edx, 14
                                                                                        je    .Lx125_52
                        cmp              ecx, 7
                                                                                        je    .Lx125_53
                        cmp              edx, 7
                                                                                        je    .Lx125_53
                        cmp              ecx, 6
                                                                                        jne   .Lx125_50
                        cmp              edx, 6
                                                                                        jne   .Lx125_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx125_51
                                                                                        jmp   .Lx125_52
.Lx125_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx125_53
.Lx125_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx125_54
.Lx125_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx125_54
.Lx125_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx125_54:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n73_op11_α
                                                                                        jmp   n72_var_ref_α
n71_op11_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_run$2F4_ω
                                                                                        jmp   n75_var_ref_α
n73_op11_β:
                                                                                        jmp   proc_run$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1392]
                        lea              r8, [rbp + 1392]
.Lx133_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_41
                        cmp              esi, 1
                                                                                        jne   .Lx133_55
                        mov              r8, rax
                                                                                        jmp   .Lx133_40
.Lx133_55:
                        cmp              esi, 2
                                                                                        jne   .Lx133_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_41
                        mov              r8, rax
                                                                                        jmp   .Lx133_40
.Lx133_56:
                        cmp              eax, 13
                                                                                        jne   .Lx133_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_41
                        cmp              rax, r8
                                                                                        je    .Lx133_41
                        mov              r8, rax
                                                                                        jmp   .Lx133_40
.Lx133_41:
                        lea              r9, [rbp + 1408]
.Lx133_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_43
                        cmp              esi, 1
                                                                                        jne   .Lx133_57
                        mov              r9, rax
                                                                                        jmp   .Lx133_42
.Lx133_57:
                        cmp              esi, 2
                                                                                        jne   .Lx133_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_43
                        mov              r9, rax
                                                                                        jmp   .Lx133_42
.Lx133_58:
                        cmp              eax, 13
                                                                                        jne   .Lx133_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_43
                        cmp              rax, r9
                                                                                        je    .Lx133_43
                        mov              r9, rax
                                                                                        jmp   .Lx133_42
.Lx133_43:
                        cmp              r8, r9
                                                                                        je    .Lx133_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_44
                        cmp              eax, 99
                                                                                        je    .Lx133_44
                        cmp              eax, 13
                                                                                        jne   .Lx133_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx133_44
                                                                                        jmp   .Lx133_45
.Lx133_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_53
                        cmp              eax, 99
                                                                                        je    .Lx133_53
                        cmp              eax, 13
                                                                                        jne   .Lx133_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx133_53
                                                                                        jmp   .Lx133_46
.Lx133_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx133_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx133_53
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
                                                                                        jmp   .Lx133_51
.Lx133_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_47
                        cmp              eax, 99
                                                                                        je    .Lx133_47
                        cmp              eax, 13
                                                                                        jne   .Lx133_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx133_47
                                                                                        jmp   .Lx133_48
.Lx133_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx133_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx133_53
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
                                                                                        jmp   .Lx133_51
.Lx133_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx133_49
                        cmp              edx, 14
                                                                                        je    .Lx133_53
                                                                                        jmp   .Lx133_52
.Lx133_49:
                        cmp              edx, 14
                                                                                        je    .Lx133_52
                        cmp              ecx, 7
                                                                                        je    .Lx133_53
                        cmp              edx, 7
                                                                                        je    .Lx133_53
                        cmp              ecx, 6
                                                                                        jne   .Lx133_50
                        cmp              edx, 6
                                                                                        jne   .Lx133_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx133_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx133_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx133_51
                                                                                        jmp   .Lx133_52
.Lx133_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx133_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx133_53
.Lx133_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx133_54
.Lx133_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx133_54
.Lx133_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx133_54:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n73_op11_α
                                                                                        jmp   n78_var_ref_α
n76_op11_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx138_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx138_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        cmp              esi, 1
                                                                                        jne   .Lx138_55
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_55:
                        cmp              esi, 2
                                                                                        jne   .Lx138_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_56:
                        cmp              eax, 13
                                                                                        jne   .Lx138_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        cmp              rax, r8
                                                                                        je    .Lx138_41
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_41:
                        lea              r9, [rbp + 432]
.Lx138_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx138_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        cmp              esi, 1
                                                                                        jne   .Lx138_57
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_57:
                        cmp              esi, 2
                                                                                        jne   .Lx138_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_58:
                        cmp              eax, 13
                                                                                        jne   .Lx138_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        cmp              rax, r9
                                                                                        je    .Lx138_43
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_43:
                        cmp              r8, r9
                                                                                        je    .Lx138_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_44
                        cmp              eax, 99
                                                                                        je    .Lx138_44
                        cmp              eax, 13
                                                                                        jne   .Lx138_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx138_44
                                                                                        jmp   .Lx138_45
.Lx138_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_53
                        cmp              eax, 99
                                                                                        je    .Lx138_53
                        cmp              eax, 13
                                                                                        jne   .Lx138_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx138_53
                                                                                        jmp   .Lx138_46
.Lx138_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx138_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx138_53
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
                                                                                        jmp   .Lx138_51
.Lx138_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_47
                        cmp              eax, 99
                                                                                        je    .Lx138_47
                        cmp              eax, 13
                                                                                        jne   .Lx138_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx138_47
                                                                                        jmp   .Lx138_48
.Lx138_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx138_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx138_53
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
                                                                                        jmp   .Lx138_51
.Lx138_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx138_49
                        cmp              edx, 14
                                                                                        je    .Lx138_53
                                                                                        jmp   .Lx138_52
.Lx138_49:
                        cmp              edx, 14
                                                                                        je    .Lx138_52
                        cmp              ecx, 7
                                                                                        je    .Lx138_53
                        cmp              edx, 7
                                                                                        je    .Lx138_53
                        cmp              ecx, 6
                                                                                        jne   .Lx138_50
                        cmp              edx, 6
                                                                                        jne   .Lx138_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx138_51
                                                                                        jmp   .Lx138_52
.Lx138_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx138_53
.Lx138_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx138_54
.Lx138_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx138_54
.Lx138_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx138_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n81_var_ref_α
n79_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
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
                                                                                        je    proc_run$2F4_ω
                                                                                        jmp   proc_run$2F4_ω
n82_op11_β:
                                                                                        jmp   proc_run$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1312]
                        lea              r8, [rbp + 1312]
.Lx144_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx144_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        cmp              esi, 1
                                                                                        jne   .Lx144_55
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_55:
                        cmp              esi, 2
                                                                                        jne   .Lx144_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_56:
                        cmp              eax, 13
                                                                                        jne   .Lx144_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        cmp              rax, r8
                                                                                        je    .Lx144_41
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_41:
                        lea              r9, [rbp + 1328]
.Lx144_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx144_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        cmp              esi, 1
                                                                                        jne   .Lx144_57
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_57:
                        cmp              esi, 2
                                                                                        jne   .Lx144_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_58:
                        cmp              eax, 13
                                                                                        jne   .Lx144_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        cmp              rax, r9
                                                                                        je    .Lx144_43
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_43:
                        cmp              r8, r9
                                                                                        je    .Lx144_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_44
                        cmp              eax, 99
                                                                                        je    .Lx144_44
                        cmp              eax, 13
                                                                                        jne   .Lx144_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx144_44
                                                                                        jmp   .Lx144_45
.Lx144_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_53
                        cmp              eax, 99
                                                                                        je    .Lx144_53
                        cmp              eax, 13
                                                                                        jne   .Lx144_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx144_53
                                                                                        jmp   .Lx144_46
.Lx144_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx144_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx144_53
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
                                                                                        jmp   .Lx144_51
.Lx144_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_47
                        cmp              eax, 99
                                                                                        je    .Lx144_47
                        cmp              eax, 13
                                                                                        jne   .Lx144_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx144_47
                                                                                        jmp   .Lx144_48
.Lx144_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx144_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx144_53
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
                                                                                        jmp   .Lx144_51
.Lx144_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx144_49
                        cmp              edx, 14
                                                                                        je    .Lx144_53
                                                                                        jmp   .Lx144_52
.Lx144_49:
                        cmp              edx, 14
                                                                                        je    .Lx144_52
                        cmp              ecx, 7
                                                                                        je    .Lx144_53
                        cmp              edx, 7
                                                                                        je    .Lx144_53
                        cmp              ecx, 6
                                                                                        jne   .Lx144_50
                        cmp              edx, 6
                                                                                        jne   .Lx144_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx144_51
                                                                                        jmp   .Lx144_52
.Lx144_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx144_53
.Lx144_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx144_54
.Lx144_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx144_54
.Lx144_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx144_54:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n73_op11_α
                                                                                        jmp   n85_var_ref_α
n83_op11_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx149_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx149_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_41
                        cmp              esi, 1
                                                                                        jne   .Lx149_55
                        mov              r8, rax
                                                                                        jmp   .Lx149_40
.Lx149_55:
                        cmp              esi, 2
                                                                                        jne   .Lx149_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx149_41
                        mov              r8, rax
                                                                                        jmp   .Lx149_40
.Lx149_56:
                        cmp              eax, 13
                                                                                        jne   .Lx149_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_41
                        cmp              rax, r8
                                                                                        je    .Lx149_41
                        mov              r8, rax
                                                                                        jmp   .Lx149_40
.Lx149_41:
                        lea              r9, [rbp + 352]
.Lx149_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx149_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_43
                        cmp              esi, 1
                                                                                        jne   .Lx149_57
                        mov              r9, rax
                                                                                        jmp   .Lx149_42
.Lx149_57:
                        cmp              esi, 2
                                                                                        jne   .Lx149_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx149_43
                        mov              r9, rax
                                                                                        jmp   .Lx149_42
.Lx149_58:
                        cmp              eax, 13
                                                                                        jne   .Lx149_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_43
                        cmp              rax, r9
                                                                                        je    .Lx149_43
                        mov              r9, rax
                                                                                        jmp   .Lx149_42
.Lx149_43:
                        cmp              r8, r9
                                                                                        je    .Lx149_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx149_44
                        cmp              eax, 99
                                                                                        je    .Lx149_44
                        cmp              eax, 13
                                                                                        jne   .Lx149_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx149_44
                                                                                        jmp   .Lx149_45
.Lx149_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx149_53
                        cmp              eax, 99
                                                                                        je    .Lx149_53
                        cmp              eax, 13
                                                                                        jne   .Lx149_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx149_53
                                                                                        jmp   .Lx149_46
.Lx149_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx149_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx149_53
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
                                                                                        jmp   .Lx149_51
.Lx149_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx149_47
                        cmp              eax, 99
                                                                                        je    .Lx149_47
                        cmp              eax, 13
                                                                                        jne   .Lx149_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx149_47
                                                                                        jmp   .Lx149_48
.Lx149_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx149_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx149_53
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
                                                                                        jmp   .Lx149_51
.Lx149_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx149_49
                        cmp              edx, 14
                                                                                        je    .Lx149_53
                                                                                        jmp   .Lx149_52
.Lx149_49:
                        cmp              edx, 14
                                                                                        je    .Lx149_52
                        cmp              ecx, 7
                                                                                        je    .Lx149_53
                        cmp              edx, 7
                                                                                        je    .Lx149_53
                        cmp              ecx, 6
                                                                                        jne   .Lx149_50
                        cmp              edx, 6
                                                                                        jne   .Lx149_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx149_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx149_51
                                                                                        jmp   .Lx149_52
.Lx149_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx149_53
.Lx149_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx149_54
.Lx149_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx149_54
.Lx149_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx149_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n88_var_ref_α
n86_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n89_var_ref_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n91_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n92_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1216]
                        lea              r8, [rbp + 1216]
.Lx157_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_61
                        cmp              esi, 1
                                                                                        jne   .Lx157_62
                        mov              r8, rax
                                                                                        jmp   .Lx157_60
.Lx157_62:
                        cmp              esi, 2
                                                                                        jne   .Lx157_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_61
                        mov              r8, rax
                                                                                        jmp   .Lx157_60
.Lx157_63:
                        cmp              eax, 13
                                                                                        jne   .Lx157_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_61
                        cmp              rax, r8
                                                                                        je    .Lx157_61
                        mov              r8, rax
                                                                                        jmp   .Lx157_60
.Lx157_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_80
                        cmp              eax, 99
                                                                                        je    .Lx157_80
                        cmp              eax, 13
                                                                                        jne   .Lx157_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx157_80
                                                                                        jmp   .Lx157_74
.Lx157_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx157_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx157_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx157_73
                        lea              r9, [rbp + 1232]
.Lx157_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_65
                        cmp              esi, 1
                                                                                        jne   .Lx157_66
                        mov              r9, rax
                                                                                        jmp   .Lx157_64
.Lx157_66:
                        cmp              esi, 2
                                                                                        jne   .Lx157_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_65
                        mov              r9, rax
                                                                                        jmp   .Lx157_64
.Lx157_67:
                        cmp              eax, 13
                                                                                        jne   .Lx157_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_65
                        cmp              rax, r9
                                                                                        je    .Lx157_65
                        mov              r9, rax
                                                                                        jmp   .Lx157_64
.Lx157_65:
                        lea              rcx, [rbp + 1248]
.Lx157_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx157_69
                        cmp              esi, 1
                                                                                        jne   .Lx157_70
                        mov              rcx, rax
                                                                                        jmp   .Lx157_68
.Lx157_70:
                        cmp              esi, 2
                                                                                        jne   .Lx157_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_69
                        mov              rcx, rax
                                                                                        jmp   .Lx157_68
.Lx157_71:
                        cmp              eax, 13
                                                                                        jne   .Lx157_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx157_69
                        cmp              rax, rcx
                                                                                        je    .Lx157_69
                        mov              rcx, rax
                                                                                        jmp   .Lx157_68
.Lx157_69:
                        cmp              r9, rcx
                                                                                        je    .Lx157_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_75
                        cmp              eax, 99
                                                                                        je    .Lx157_75
                        cmp              eax, 13
                                                                                        jne   .Lx157_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx157_75
                                                                                        jmp   .Lx157_72
.Lx157_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_76
                        cmp              eax, 99
                                                                                        je    .Lx157_76
                        cmp              eax, 13
                                                                                        jne   .Lx157_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx157_76
                                                                                        jmp   .Lx157_72
.Lx157_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx157_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx157_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx157_77
.Lx157_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx157_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx157_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx157_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx157_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx157_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 1232]
.Lx157_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_82
                        cmp              esi, 1
                                                                                        jne   .Lx157_83
                        mov              r9, rax
                                                                                        jmp   .Lx157_81
.Lx157_83:
                        cmp              esi, 2
                                                                                        jne   .Lx157_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_82
                        mov              r9, rax
                                                                                        jmp   .Lx157_81
.Lx157_84:
                        cmp              eax, 13
                                                                                        jne   .Lx157_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_82
                        cmp              rax, r9
                                                                                        je    .Lx157_82
                        mov              r9, rax
                                                                                        jmp   .Lx157_81
.Lx157_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_85
                        cmp              eax, 99
                                                                                        je    .Lx157_85
                        cmp              eax, 13
                                                                                        jne   .Lx157_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx157_85
                                                                                        jmp   .Lx157_86
.Lx157_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx157_87
.Lx157_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx157_87:
                        lea              rcx, [rbp + 1248]
.Lx157_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx157_89
                        cmp              esi, 1
                                                                                        jne   .Lx157_90
                        mov              rcx, rax
                                                                                        jmp   .Lx157_88
.Lx157_90:
                        cmp              esi, 2
                                                                                        jne   .Lx157_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_89
                        mov              rcx, rax
                                                                                        jmp   .Lx157_88
.Lx157_91:
                        cmp              eax, 13
                                                                                        jne   .Lx157_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx157_89
                        cmp              rax, rcx
                                                                                        je    .Lx157_89
                        mov              rcx, rax
                                                                                        jmp   .Lx157_88
.Lx157_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_92
                        cmp              eax, 99
                                                                                        je    .Lx157_92
                        cmp              eax, 13
                                                                                        jne   .Lx157_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx157_92
                                                                                        jmp   .Lx157_93
.Lx157_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx157_94
.Lx157_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx157_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx157_77
.Lx157_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx157_77
.Lx157_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx157_77:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n73_op11_α
                                                                                        jmp   n93_var_ref_α
n91_op11_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
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
.Lx158_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx158_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        cmp              esi, 1
                                                                                        jne   .Lx158_55
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_55:
                        cmp              esi, 2
                                                                                        jne   .Lx158_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_56:
                        cmp              eax, 13
                                                                                        jne   .Lx158_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        cmp              rax, r8
                                                                                        je    .Lx158_41
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_41:
                        lea              r9, [rbp + 272]
.Lx158_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx158_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        cmp              esi, 1
                                                                                        jne   .Lx158_57
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_57:
                        cmp              esi, 2
                                                                                        jne   .Lx158_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_58:
                        cmp              eax, 13
                                                                                        jne   .Lx158_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        cmp              rax, r9
                                                                                        je    .Lx158_43
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_43:
                        cmp              r8, r9
                                                                                        je    .Lx158_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_44
                        cmp              eax, 99
                                                                                        je    .Lx158_44
                        cmp              eax, 13
                                                                                        jne   .Lx158_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx158_44
                                                                                        jmp   .Lx158_45
.Lx158_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_53
                        cmp              eax, 99
                                                                                        je    .Lx158_53
                        cmp              eax, 13
                                                                                        jne   .Lx158_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx158_53
                                                                                        jmp   .Lx158_46
.Lx158_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx158_53
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
                                                                                        jmp   .Lx158_51
.Lx158_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_47
                        cmp              eax, 99
                                                                                        je    .Lx158_47
                        cmp              eax, 13
                                                                                        jne   .Lx158_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx158_47
                                                                                        jmp   .Lx158_48
.Lx158_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx158_53
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
                                                                                        jmp   .Lx158_51
.Lx158_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx158_49
                        cmp              edx, 14
                                                                                        je    .Lx158_53
                                                                                        jmp   .Lx158_52
.Lx158_49:
                        cmp              edx, 14
                                                                                        je    .Lx158_52
                        cmp              ecx, 7
                                                                                        je    .Lx158_53
                        cmp              edx, 7
                                                                                        je    .Lx158_53
                        cmp              ecx, 6
                                                                                        jne   .Lx158_50
                        cmp              edx, 6
                                                                                        jne   .Lx158_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx158_51
                                                                                        jmp   .Lx158_52
.Lx158_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx158_53
.Lx158_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx158_54
.Lx158_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx158_54
.Lx158_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx158_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n94_var_ref_α
n92_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n98_op11_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn167:              .string          "$succ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n73_op11_α
                                                                                        jmp   n99_op19_α
n97_op11_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              rsi, qword ptr [rip + .Lx168_2]
                                                                                        jmp   .Lx168_3
.Lx168_2:
                        .quad            .Lx168_2_s
.Lx168_2_s:
                        .string          "[]"
.Lx168_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n100_suspend_α
n98_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op19_α:
                                                                                        jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_suspend_α:
                        lea              rax, [rip + n100_suspend_β]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_run$2F4_γ
n100_suspend_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n103_lit_integer_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n104_op11_α
.Lx175_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn177:              .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n105_var_ref_α
n104_op11_β:
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n107_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        mov              qword ptr [rbp + 928], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx183_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx183_21
.Lx183_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        call             rt_arg_stage@PLT
.Lx183_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx183_22
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx183_23
.Lx183_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx183_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx183_1
                        lea              rcx, [rip + .Lx183_3]
                        lea              rdx, [rip + .Lx183_4]
                                                                                        jmp   rax
.Lx183_3:
                        mov              qword ptr [rbp + 936], rsp
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx183_5
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx183_2
.Lx183_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx183_2
.Lx183_4:
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx183_6
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx183_2
.Lx183_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx183_2
.Lx183_1:
                        call             rt_faildescr@PLT
.Lx183_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n82_op11_α
                                                                                        jmp   n108_var_ref_α
n107_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   qword ptr [rsp]
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n109_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_20
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx189_21
.Lx189_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        call             rt_arg_stage@PLT
.Lx189_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_22
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx189_23
.Lx189_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        call             rt_arg_stage@PLT
.Lx189_23:
                        mov              rdi, qword ptr [rip + .Lx189_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx189_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx189_3]
                        lea              rdx, [rip + .Lx189_4]
                                                                                        jmp   rax
.Lx189_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx189_2
.Lx189_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx189_2
.Lx189_1:
                        call             rt_faildescr@PLT
.Lx189_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n107_call_proc_staged_β
                                                                                        jmp   n111_var_ref_α
n110_call_proc_staged_β:
                                                                                        jmp   n107_call_proc_staged_β
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "=@=/2"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n113_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_20
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx195_21
.Lx195_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx195_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_22
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx195_23
.Lx195_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx195_23:
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx195_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx195_3]
                        lea              rdx, [rip + .Lx195_4]
                                                                                        jmp   rax
.Lx195_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_1:
                        call             rt_faildescr@PLT
.Lx195_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n110_call_proc_staged_β
                                                                                        jmp   n114_var_ref_α
n113_call_proc_staged_β:
                                                                                        jmp   n110_call_proc_staged_β
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "=@=/2"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n118_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx205_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx205_21
.Lx205_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx205_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx205_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx205_23
.Lx205_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx205_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx205_24
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx205_25
.Lx205_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx205_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx205_26
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx205_27
.Lx205_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx205_27:
                        mov              edi, 2
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx205_1
                        lea              rcx, [rip + .Lx205_3]
                        lea              rdx, [rip + .Lx205_4]
                                                                                        jmp   rax
.Lx205_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx205_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx205_2
.Lx205_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx205_2
.Lx205_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx205_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx205_2
.Lx205_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx205_2
.Lx205_1:
                        call             rt_faildescr@PLT
.Lx205_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n113_call_proc_staged_β
                                                                                        jmp   n119_suspend_α
n118_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "run/4"
#-----------------------------------------------------------------------------------------------------------------------
n119_suspend_α:
                        lea              rax, [rip + n119_suspend_β]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_run$2F4_γ
n119_suspend_β:
                                                                                        jmp   n118_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F4_β:
                                                                                        jmp   qword ptr [rbp + 1536]
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_run$2F4_res]
                        push             rax
                        mov              rax, [rbp + 1672]
                        mov              rbp, [rbp + 1688]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F4_ω:
                        mov              rax, [rbp + 1680]
                        lea              rsp, [rbp + 1696]
                        mov              rbp, [rbp + 1688]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_prolog_flag$2F2_α
proc_current_prolog_flag$2F2_α:
                        .global          proc_current_prolog_flag$2F2_α
                        .global          proc_current_prolog_flag$2F2_β
                        .global          proc_current_prolog_flag$2F2_γ
                        .global          proc_current_prolog_flag$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_prolog_flag$2F2_α_body:
                        lea              rax, [rip + n211_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n210_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx216_60:
                        .section         .rodata
.Lbynamegenfn80:        .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn80]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_prolog_flag$2F2_ω
                                                                                        jmp   n211_suspend_α
n210_call_builtin_gen_β:
                                                                                        jmp   .Lx216_60
#-----------------------------------------------------------------------------------------------------------------------
n211_suspend_α:
                        lea              rax, [rip + n211_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_prolog_flag$2F2_γ
n211_suspend_β:
                                                                                        jmp   n210_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_prolog_flag$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gspace$2F1_α
proc_gspace$2F1_α:
                        .global          proc_gspace$2F1_α
                        .global          proc_gspace$2F1_β
                        .global          proc_gspace$2F1_γ
                        .global          proc_gspace$2F1_ω
                        sub              rsp, 1440
                        mov              [rsp + 1416], rcx
                        mov              [rsp + 1424], rdx
                        mov              [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1408
                        call             rt_jmp_frame_lexprep2@PLT
proc_gspace$2F1_α_body:
                        lea              rax, [rip + n256_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx257_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx257_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx257_101
.Lx257_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx257_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_gspace$2F1_ω
                                                                                        jmp   n220_var_ref_α
n219_op11_β:
                                                                                        jmp   proc_gspace$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n222_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1216]
                        lea              r8, [rbp + 1216]
.Lx262_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx262_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx262_41
                        cmp              esi, 1
                                                                                        jne   .Lx262_55
                        mov              r8, rax
                                                                                        jmp   .Lx262_40
.Lx262_55:
                        cmp              esi, 2
                                                                                        jne   .Lx262_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx262_41
                        mov              r8, rax
                                                                                        jmp   .Lx262_40
.Lx262_56:
                        cmp              eax, 13
                                                                                        jne   .Lx262_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx262_41
                        cmp              rax, r8
                                                                                        je    .Lx262_41
                        mov              r8, rax
                                                                                        jmp   .Lx262_40
.Lx262_41:
                        lea              r9, [rbp + 1232]
.Lx262_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx262_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx262_43
                        cmp              esi, 1
                                                                                        jne   .Lx262_57
                        mov              r9, rax
                                                                                        jmp   .Lx262_42
.Lx262_57:
                        cmp              esi, 2
                                                                                        jne   .Lx262_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx262_43
                        mov              r9, rax
                                                                                        jmp   .Lx262_42
.Lx262_58:
                        cmp              eax, 13
                                                                                        jne   .Lx262_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx262_43
                        cmp              rax, r9
                                                                                        je    .Lx262_43
                        mov              r9, rax
                                                                                        jmp   .Lx262_42
.Lx262_43:
                        cmp              r8, r9
                                                                                        je    .Lx262_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx262_44
                        cmp              eax, 99
                                                                                        je    .Lx262_44
                        cmp              eax, 13
                                                                                        jne   .Lx262_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx262_44
                                                                                        jmp   .Lx262_45
.Lx262_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx262_53
                        cmp              eax, 99
                                                                                        je    .Lx262_53
                        cmp              eax, 13
                                                                                        jne   .Lx262_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx262_53
                                                                                        jmp   .Lx262_46
.Lx262_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx262_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx262_53
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
                                                                                        jmp   .Lx262_51
.Lx262_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx262_47
                        cmp              eax, 99
                                                                                        je    .Lx262_47
                        cmp              eax, 13
                                                                                        jne   .Lx262_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx262_47
                                                                                        jmp   .Lx262_48
.Lx262_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx262_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx262_53
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
                                                                                        jmp   .Lx262_51
.Lx262_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx262_49
                        cmp              edx, 14
                                                                                        je    .Lx262_53
                                                                                        jmp   .Lx262_52
.Lx262_49:
                        cmp              edx, 14
                                                                                        je    .Lx262_52
                        cmp              ecx, 7
                                                                                        je    .Lx262_53
                        cmp              edx, 7
                                                                                        je    .Lx262_53
                        cmp              ecx, 6
                                                                                        jne   .Lx262_50
                        cmp              edx, 6
                                                                                        jne   .Lx262_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx262_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx262_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx262_51
                                                                                        jmp   .Lx262_52
.Lx262_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx262_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx262_53
.Lx262_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx262_54
.Lx262_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx262_54
.Lx262_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx262_54:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n223_call_proc_staged_α
n222_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx264_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx264_3]
                        lea              rdx, [rip + .Lx264_4]
                                                                                        jmp   rax
.Lx264_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx264_2
.Lx264_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx264_2
.Lx264_1:
                        call             rt_faildescr@PLT
.Lx264_2:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n225_lit_string_α
n223_call_proc_staged_β:
                                                                                        jmp   n224_op11_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
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
                                                                                        je    proc_gspace$2F1_ω
                                                                                        jmp   proc_gspace$2F1_ω
n224_op11_β:
                                                                                        jmp   proc_gspace$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n226_var_ref_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n227_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        mov              qword ptr [rbp + 1104], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_20
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx270_21
.Lx270_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx270_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx270_23
.Lx270_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx270_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx270_1
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4]
                                                                                        jmp   rax
.Lx270_3:
                        mov              qword ptr [rbp + 1112], rsp
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax
                                                                                        jne   .Lx270_5
                        mov              qword ptr [rbp + 1104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_4:
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax
                                                                                        jne   .Lx270_6
                        mov              qword ptr [rbp + 1104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_1:
                        call             rt_faildescr@PLT
.Lx270_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_proc_staged_β
                                                                                        jmp   n228_lit_string_α
n227_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1112]
                                                                                        jmp   qword ptr [rsp]
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n229_var_ref_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "globalused"
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n230_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n230_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx275_21
.Lx275_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx275_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_22
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx275_23
.Lx275_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx275_23:
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx275_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4]
                                                                                        jmp   rax
.Lx275_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_1:
                        call             rt_faildescr@PLT
.Lx275_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n227_call_proc_staged_β
                                                                                        jmp   n231_lit_string_α
n230_call_proc_staged_β:
                                                                                        jmp   n227_call_proc_staged_β
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n232_var_ref_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "localused"
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n233_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_20
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx280_21
.Lx280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        call             rt_arg_stage@PLT
.Lx280_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_22
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx280_23
.Lx280_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        call             rt_arg_stage@PLT
.Lx280_23:
                        mov              rdi, qword ptr [rip + .Lx280_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx280_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4]
                                                                                        jmp   rax
.Lx280_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_1:
                        call             rt_faildescr@PLT
.Lx280_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n230_call_proc_staged_β
                                                                                        jmp   n234_lit_string_α
n233_call_proc_staged_β:
                                                                                        jmp   n230_call_proc_staged_β
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n235_var_ref_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "trailused"
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n236_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_20
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx285_21
.Lx285_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        call             rt_arg_stage@PLT
.Lx285_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_22
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx285_23
.Lx285_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        call             rt_arg_stage@PLT
.Lx285_23:
                        mov              rdi, qword ptr [rip + .Lx285_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx285_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx285_3]
                        lea              rdx, [rip + .Lx285_4]
                                                                                        jmp   rax
.Lx285_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx285_2
.Lx285_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx285_2
.Lx285_1:
                        call             rt_faildescr@PLT
.Lx285_2:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n233_call_proc_staged_β
                                                                                        jmp   n237_var_ref_α
n236_call_proc_staged_β:
                                                                                        jmp   n233_call_proc_staged_β
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n239_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n240_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n240_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n241_var_α
n240_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n242_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n242_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n243_op11_α
n242_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n243_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_proc_staged_β
                                                                                        jmp   n244_lit_string_α
n243_op11_β:
                                                                                        jmp   n236_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n245_var_ref_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "address_bits"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n246_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_proc_staged_α:
                        mov              qword ptr [rbp + 464], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx301_21
.Lx301_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx301_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_22
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx301_23
.Lx301_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx301_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx301_1
                        lea              rcx, [rip + .Lx301_3]
                        lea              rdx, [rip + .Lx301_4]
                                                                                        jmp   rax
.Lx301_3:
                        mov              qword ptr [rbp + 472], rsp
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx301_5
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_4:
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx301_6
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_1:
                        call             rt_faildescr@PLT
.Lx301_2:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_proc_staged_β
                                                                                        jmp   n247_var_ref_α
n246_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 472]
                                                                                        jmp   qword ptr [rsp]
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n250_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n251_var_α
n250_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n252_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n253_op11_α
.Lx311_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n253_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n254_op11_α
n253_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n255_op11_α
n254_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n246_call_proc_staged_β
                                                                                        jmp   n256_suspend_α
n255_op11_β:
                                                                                        jmp   n246_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n256_suspend_α:
                        lea              rax, [rip + n256_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gspace$2F1_γ
n256_suspend_β:
                                                                                        jmp   n246_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gspace$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gspace$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1280]
#-----------------------------------------------------------------------------------------------------------------------
proc_gspace$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gspace$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1416]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gspace$2F1_ω:
                        mov              rax, [rbp + 1424]
                        lea              rsp, [rbp + 1440]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$2C$2F2_α
proc_$2C$2F2_α:
                        .global          proc_$2C$2F2_α
                        .global          proc_$2C$2F2_β
                        .global          proc_$2C$2F2_γ
                        .global          proc_$2C$2F2_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_$2C$2F2_α_body:
                        lea              rax, [rip + n343_suspend_β]
                        mov              qword ptr [rbp + 1248], rax
#-----------------------------------------------------------------------------------------------------------------------
n317_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx355_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx355_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx355_101
.Lx355_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx355_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n318_var_ref_α
n317_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n319_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n320_lit_string_α
.Lx358_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n321_op11_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "gspace"
#-----------------------------------------------------------------------------------------------------------------------
n321_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n323_var_ref_α
                                                                                        jmp   n322_var_ref_α
n321_op11_β:
                                                                                        jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n325_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n326_var_ref_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "gspace"
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n327_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx370_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx370_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_41
                        cmp              esi, 1
                                                                                        jne   .Lx370_55
                        mov              r8, rax
                                                                                        jmp   .Lx370_40
.Lx370_55:
                        cmp              esi, 2
                                                                                        jne   .Lx370_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx370_41
                        mov              r8, rax
                                                                                        jmp   .Lx370_40
.Lx370_56:
                        cmp              eax, 13
                                                                                        jne   .Lx370_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_41
                        cmp              rax, r8
                                                                                        je    .Lx370_41
                        mov              r8, rax
                                                                                        jmp   .Lx370_40
.Lx370_41:
                        lea              r9, [rbp + 352]
.Lx370_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx370_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_43
                        cmp              esi, 1
                                                                                        jne   .Lx370_57
                        mov              r9, rax
                                                                                        jmp   .Lx370_42
.Lx370_57:
                        cmp              esi, 2
                                                                                        jne   .Lx370_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx370_43
                        mov              r9, rax
                                                                                        jmp   .Lx370_42
.Lx370_58:
                        cmp              eax, 13
                                                                                        jne   .Lx370_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_43
                        cmp              rax, r9
                                                                                        je    .Lx370_43
                        mov              r9, rax
                                                                                        jmp   .Lx370_42
.Lx370_43:
                        cmp              r8, r9
                                                                                        je    .Lx370_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx370_44
                        cmp              eax, 99
                                                                                        je    .Lx370_44
                        cmp              eax, 13
                                                                                        jne   .Lx370_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx370_44
                                                                                        jmp   .Lx370_45
.Lx370_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx370_53
                        cmp              eax, 99
                                                                                        je    .Lx370_53
                        cmp              eax, 13
                                                                                        jne   .Lx370_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx370_53
                                                                                        jmp   .Lx370_46
.Lx370_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx370_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx370_53
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
                                                                                        jmp   .Lx370_51
.Lx370_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx370_47
                        cmp              eax, 99
                                                                                        je    .Lx370_47
                        cmp              eax, 13
                                                                                        jne   .Lx370_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx370_47
                                                                                        jmp   .Lx370_48
.Lx370_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx370_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx370_53
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
                                                                                        jmp   .Lx370_51
.Lx370_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx370_49
                        cmp              edx, 14
                                                                                        je    .Lx370_53
                                                                                        jmp   .Lx370_52
.Lx370_49:
                        cmp              edx, 14
                                                                                        je    .Lx370_52
                        cmp              ecx, 7
                                                                                        je    .Lx370_53
                        cmp              edx, 7
                                                                                        je    .Lx370_53
                        cmp              ecx, 6
                                                                                        jne   .Lx370_50
                        cmp              edx, 6
                                                                                        jne   .Lx370_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx370_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx370_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx370_51
                                                                                        jmp   .Lx370_52
.Lx370_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx370_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx370_53
.Lx370_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx370_54
.Lx370_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx370_54
.Lx370_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx370_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n330_op11_α
                                                                                        jmp   n329_var_ref_α
n327_op11_β:
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n331_op11_α
n328_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_op11_α:
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
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   proc_$2C$2F2_ω
n330_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx375_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx375_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_41
                        cmp              esi, 1
                                                                                        jne   .Lx375_55
                        mov              r8, rax
                                                                                        jmp   .Lx375_40
.Lx375_55:
                        cmp              esi, 2
                                                                                        jne   .Lx375_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx375_41
                        mov              r8, rax
                                                                                        jmp   .Lx375_40
.Lx375_56:
                        cmp              eax, 13
                                                                                        jne   .Lx375_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_41
                        cmp              rax, r8
                                                                                        je    .Lx375_41
                        mov              r8, rax
                                                                                        jmp   .Lx375_40
.Lx375_41:
                        lea              r9, [rbp + 1008]
.Lx375_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx375_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_43
                        cmp              esi, 1
                                                                                        jne   .Lx375_57
                        mov              r9, rax
                                                                                        jmp   .Lx375_42
.Lx375_57:
                        cmp              esi, 2
                                                                                        jne   .Lx375_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx375_43
                        mov              r9, rax
                                                                                        jmp   .Lx375_42
.Lx375_58:
                        cmp              eax, 13
                                                                                        jne   .Lx375_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_43
                        cmp              rax, r9
                                                                                        je    .Lx375_43
                        mov              r9, rax
                                                                                        jmp   .Lx375_42
.Lx375_43:
                        cmp              r8, r9
                                                                                        je    .Lx375_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx375_44
                        cmp              eax, 99
                                                                                        je    .Lx375_44
                        cmp              eax, 13
                                                                                        jne   .Lx375_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx375_44
                                                                                        jmp   .Lx375_45
.Lx375_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx375_53
                        cmp              eax, 99
                                                                                        je    .Lx375_53
                        cmp              eax, 13
                                                                                        jne   .Lx375_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx375_53
                                                                                        jmp   .Lx375_46
.Lx375_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx375_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx375_53
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
                                                                                        jmp   .Lx375_51
.Lx375_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx375_47
                        cmp              eax, 99
                                                                                        je    .Lx375_47
                        cmp              eax, 13
                                                                                        jne   .Lx375_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx375_47
                                                                                        jmp   .Lx375_48
.Lx375_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx375_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx375_53
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
                                                                                        jmp   .Lx375_51
.Lx375_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx375_49
                        cmp              edx, 14
                                                                                        je    .Lx375_53
                                                                                        jmp   .Lx375_52
.Lx375_49:
                        cmp              edx, 14
                                                                                        je    .Lx375_52
                        cmp              ecx, 7
                                                                                        je    .Lx375_53
                        cmp              edx, 7
                                                                                        je    .Lx375_53
                        cmp              ecx, 6
                                                                                        jne   .Lx375_50
                        cmp              edx, 6
                                                                                        jne   .Lx375_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx375_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx375_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx375_51
                                                                                        jmp   .Lx375_52
.Lx375_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx375_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx375_53
.Lx375_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx375_54
.Lx375_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx375_54
.Lx375_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx375_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n334_var_ref_α
n331_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n332_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n323_var_ref_α
n332_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n335_lit_string_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "set_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n337_var_ref_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n338_var_ref_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "is"
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n339_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n340_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n330_op11_α
                                                                                        jmp   n341_op11_α
n339_op11_β:
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n342_lit_integer_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n341_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx388_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx388_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        cmp              esi, 1
                                                                                        jne   .Lx388_55
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_55:
                        cmp              esi, 2
                                                                                        jne   .Lx388_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_56:
                        cmp              eax, 13
                                                                                        jne   .Lx388_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        cmp              rax, r8
                                                                                        je    .Lx388_41
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_41:
                        lea              r9, [rbp + 160]
.Lx388_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx388_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        cmp              esi, 1
                                                                                        jne   .Lx388_57
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_57:
                        cmp              esi, 2
                                                                                        jne   .Lx388_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_58:
                        cmp              eax, 13
                                                                                        jne   .Lx388_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        cmp              rax, r9
                                                                                        je    .Lx388_43
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_43:
                        cmp              r8, r9
                                                                                        je    .Lx388_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_44
                        cmp              eax, 99
                                                                                        je    .Lx388_44
                        cmp              eax, 13
                                                                                        jne   .Lx388_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx388_44
                                                                                        jmp   .Lx388_45
.Lx388_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_53
                        cmp              eax, 99
                                                                                        je    .Lx388_53
                        cmp              eax, 13
                                                                                        jne   .Lx388_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx388_53
                                                                                        jmp   .Lx388_46
.Lx388_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx388_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx388_53
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
                                                                                        jmp   .Lx388_51
.Lx388_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_47
                        cmp              eax, 99
                                                                                        je    .Lx388_47
                        cmp              eax, 13
                                                                                        jne   .Lx388_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx388_47
                                                                                        jmp   .Lx388_48
.Lx388_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx388_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx388_53
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
                                                                                        jmp   .Lx388_51
.Lx388_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx388_49
                        cmp              edx, 14
                                                                                        je    .Lx388_53
                                                                                        jmp   .Lx388_52
.Lx388_49:
                        cmp              edx, 14
                                                                                        je    .Lx388_52
                        cmp              ecx, 7
                                                                                        je    .Lx388_53
                        cmp              edx, 7
                                                                                        je    .Lx388_53
                        cmp              ecx, 6
                                                                                        jne   .Lx388_50
                        cmp              edx, 6
                                                                                        jne   .Lx388_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx388_51
                                                                                        jmp   .Lx388_52
.Lx388_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx388_53
.Lx388_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx388_54
.Lx388_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx388_54
.Lx388_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx388_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n330_op11_α
                                                                                        jmp   n343_suspend_α
n341_op11_β:
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n344_lit_string_α
.Lx389_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n343_suspend_α:
                        lea              rax, [rip + n343_suspend_β]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n343_suspend_β:
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n345_lit_string_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n346_var_ref_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n347_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n348_op11_α
.Lx396_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n349_lit_integer_α
n348_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n350_op11_α
.Lx398_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n350_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n351_op11_α
n350_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n352_op11_α
n351_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n353_op11_α
n352_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n353_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        lea              r8, [rbp + 464]
.Lx402_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx402_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              esi, 1
                                                                                        jne   .Lx402_55
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_55:
                        cmp              esi, 2
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_56:
                        cmp              eax, 13
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              rax, r8
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_41:
                        lea              r9, [rbp + 480]
.Lx402_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx402_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              esi, 1
                                                                                        jne   .Lx402_57
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_57:
                        cmp              esi, 2
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_58:
                        cmp              eax, 13
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              rax, r9
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_43:
                        cmp              r8, r9
                                                                                        je    .Lx402_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_44
                        cmp              eax, 99
                                                                                        je    .Lx402_44
                        cmp              eax, 13
                                                                                        jne   .Lx402_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx402_44
                                                                                        jmp   .Lx402_45
.Lx402_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_53
                        cmp              eax, 99
                                                                                        je    .Lx402_53
                        cmp              eax, 13
                                                                                        jne   .Lx402_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_46
.Lx402_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_47
                        cmp              eax, 99
                                                                                        je    .Lx402_47
                        cmp              eax, 13
                                                                                        jne   .Lx402_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_47
                                                                                        jmp   .Lx402_48
.Lx402_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx402_49
                        cmp              edx, 14
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_52
.Lx402_49:
                        cmp              edx, 14
                                                                                        je    .Lx402_52
                        cmp              ecx, 7
                                                                                        je    .Lx402_53
                        cmp              edx, 7
                                                                                        je    .Lx402_53
                        cmp              ecx, 6
                                                                                        jne   .Lx402_50
                        cmp              edx, 6
                                                                                        jne   .Lx402_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx402_51
                                                                                        jmp   .Lx402_52
.Lx402_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
.Lx402_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx402_54
.Lx402_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx402_54
.Lx402_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx402_54:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n354_suspend_α
n353_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n354_suspend_α:
                        lea              rax, [rip + n354_suspend_β]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n354_suspend_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1248]
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$2C$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_clause_gc$2F0_α
proc_test_clause_gc$2F0_α:
                        .global          proc_test_clause_gc$2F0_α
                        .global          proc_test_clause_gc$2F0_β
                        .global          proc_test_clause_gc$2F0_γ
                        .global          proc_test_clause_gc$2F0_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_clause_gc$2F0_α_body:
                        lea              rax, [rip + n418_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n405_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx419_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx419_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx419_101
.Lx419_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx419_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_clause_gc$2F0_ω
                                                                                        jmp   n406_lit_string_α
n405_op11_β:
                                                                                        jmp   proc_test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n407_lit_string_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n408_lit_string_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n409_var_ref_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n410_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n410_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_clause_gc$2F0_ω
                                                                                        jmp   n411_lit_string_α
n410_op11_β:
                                                                                        jmp   proc_test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n412_lit_string_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "set_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n413_lit_integer_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n414_op11_α
.Lx428_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n414_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_clause_gc$2F0_ω
                                                                                        jmp   n415_op11_α
n414_op11_β:
                                                                                        jmp   proc_test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n415_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n416_call_proc_staged_α
n415_op11_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx432_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx432_21
.Lx432_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx432_21:
                        mov              rdi, qword ptr [rip + .Lx432_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx432_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx432_3]
                        lea              rdx, [rip + .Lx432_4]
                                                                                        jmp   rax
.Lx432_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx432_2
.Lx432_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx432_2
.Lx432_1:
                        call             rt_faildescr@PLT
.Lx432_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n418_suspend_α
n416_call_proc_staged_β:
                                                                                        jmp   n417_op11_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "setup_call_cleanup/1"
#-----------------------------------------------------------------------------------------------------------------------
n417_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_clause_gc$2F0_ω
                                                                                        jmp   proc_test_clause_gc$2F0_ω
n417_op11_β:
                                                                                        jmp   proc_test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_suspend_α:
                        lea              rax, [rip + n418_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_clause_gc$2F0_γ
n418_suspend_β:
                                                                                        jmp   n416_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_clause_gc$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_clause_gc$2F0_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_clause_gc$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_clause_gc$2F0_res]
                        push             rax
                        mov              rax, [rbp + 520]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_clause_gc$2F0_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n453_suspend_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n436_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx454_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx454_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx454_101
.Lx454_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx454_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n437_lit_string_α
n436_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n438_lit_string_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "test_clause_gc"
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n439_lit_string_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n440_lit_string_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n441_lit_integer_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "test_clause_gc"
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n442_op11_α
.Lx459_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n442_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n443_lit_string_α
n442_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n444_lit_string_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n445_lit_string_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n446_lit_integer_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "test_clause_gc"
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n447_op11_α
.Lx464_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n448_lit_string_α
n447_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n449_op11_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n449_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n450_op11_α
n449_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n452_op11_α
                                                                                        jmp   n451_call_proc_staged_α
n450_op11_β:
                                                                                        jmp   n452_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx470_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx470_21
.Lx470_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx470_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx470_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx470_23
.Lx470_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx470_23:
                        mov              rdi, qword ptr [rip + .Lx470_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx470_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx470_3]
                        lea              rdx, [rip + .Lx470_4]
                                                                                        jmp   rax
.Lx470_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx470_2
.Lx470_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx470_2
.Lx470_1:
                        call             rt_faildescr@PLT
.Lx470_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n452_op11_α
                                                                                        jmp   n453_suspend_α
n451_call_proc_staged_β:
                                                                                        jmp   n452_op11_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n452_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n452_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_suspend_α:
                        lea              rax, [rip + n453_suspend_β]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n453_suspend_β:
                                                                                        jmp   n451_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 648]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cl$2F8_α
proc_cl$2F8_α:
                        .global          proc_cl$2F8_α
                        .global          proc_cl$2F8_β
                        .global          proc_cl$2F8_γ
                        .global          proc_cl$2F8_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_cl$2F8_α_body:
                        lea              rax, [rip + n484_suspend_β]
                        mov              qword ptr [rbp + 464], rax
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n475_var_ref_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n476_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n479_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n480_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n482_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n483_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 296], rax
                        mov              qword ptr [rbp + 304], 0
.Lx502_60:
                        .section         .rodata
.Lbynamegenfn199:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn199]
                        lea              rsi, [rbp + 160]
                        mov              edx, 9
                        lea              rcx, [rbp + 304]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_cl$2F8_ω
                                                                                        jmp   n484_suspend_α
n483_call_builtin_gen_β:
                                                                                        jmp   .Lx502_60
#-----------------------------------------------------------------------------------------------------------------------
n484_suspend_α:
                        lea              rax, [rip + n484_suspend_β]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_cl$2F8_γ
n484_suspend_β:
                                                                                        jmp   n483_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F8_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F8_β:
                                                                                        jmp   qword ptr [rbp + 464]
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F8_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_cl$2F8_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F8_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n512_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n505_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx513_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx513_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx513_101
.Lx513_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx513_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n506_lit_string_α
n505_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n507_lit_string_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n508_lit_integer_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n509_op11_α
.Lx516_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n509_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n511_op11_α
                                                                                        jmp   n510_call_proc_staged_α
n509_op11_β:
                                                                                        jmp   n511_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx519_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx519_21
.Lx519_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx519_21:
                        mov              rdi, qword ptr [rip + .Lx519_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx519_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx519_3]
                        lea              rdx, [rip + .Lx519_4]
                                                                                        jmp   rax
.Lx519_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx519_2
.Lx519_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx519_2
.Lx519_1:
                        call             rt_faildescr@PLT
.Lx519_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n511_op11_α
                                                                                        jmp   n512_suspend_α
n510_call_proc_staged_β:
                                                                                        jmp   n511_op11_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n511_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n511_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n512_suspend_α:
                        lea              rax, [rip + n512_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n512_suspend_β:
                                                                                        jmp   n510_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a$2F2_α
proc_a$2F2_α:
                        .global          proc_a$2F2_α
                        .global          proc_a$2F2_β
                        .global          proc_a$2F2_γ
                        .global          proc_a$2F2_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_a$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n523_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx533_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx533_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx533_101
.Lx533_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx533_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F2_ω
                                                                                        jmp   n524_var_ref_α
n523_op11_β:
                                                                                        jmp   proc_a$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n525_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n526_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n526_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lx538_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx538_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_41
                        cmp              esi, 1
                                                                                        jne   .Lx538_55
                        mov              r8, rax
                                                                                        jmp   .Lx538_40
.Lx538_55:
                        cmp              esi, 2
                                                                                        jne   .Lx538_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx538_41
                        mov              r8, rax
                                                                                        jmp   .Lx538_40
.Lx538_56:
                        cmp              eax, 13
                                                                                        jne   .Lx538_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_41
                        cmp              rax, r8
                                                                                        je    .Lx538_41
                        mov              r8, rax
                                                                                        jmp   .Lx538_40
.Lx538_41:
                        lea              r9, [rbp + 256]
.Lx538_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx538_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_43
                        cmp              esi, 1
                                                                                        jne   .Lx538_57
                        mov              r9, rax
                                                                                        jmp   .Lx538_42
.Lx538_57:
                        cmp              esi, 2
                                                                                        jne   .Lx538_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx538_43
                        mov              r9, rax
                                                                                        jmp   .Lx538_42
.Lx538_58:
                        cmp              eax, 13
                                                                                        jne   .Lx538_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_43
                        cmp              rax, r9
                                                                                        je    .Lx538_43
                        mov              r9, rax
                                                                                        jmp   .Lx538_42
.Lx538_43:
                        cmp              r8, r9
                                                                                        je    .Lx538_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx538_44
                        cmp              eax, 99
                                                                                        je    .Lx538_44
                        cmp              eax, 13
                                                                                        jne   .Lx538_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx538_44
                                                                                        jmp   .Lx538_45
.Lx538_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx538_53
                        cmp              eax, 99
                                                                                        je    .Lx538_53
                        cmp              eax, 13
                                                                                        jne   .Lx538_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx538_53
                                                                                        jmp   .Lx538_46
.Lx538_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx538_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx538_53
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
                                                                                        jmp   .Lx538_51
.Lx538_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx538_47
                        cmp              eax, 99
                                                                                        je    .Lx538_47
                        cmp              eax, 13
                                                                                        jne   .Lx538_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx538_47
                                                                                        jmp   .Lx538_48
.Lx538_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx538_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx538_53
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
                                                                                        jmp   .Lx538_51
.Lx538_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx538_49
                        cmp              edx, 14
                                                                                        je    .Lx538_53
                                                                                        jmp   .Lx538_52
.Lx538_49:
                        cmp              edx, 14
                                                                                        je    .Lx538_52
                        cmp              ecx, 7
                                                                                        je    .Lx538_53
                        cmp              edx, 7
                                                                                        je    .Lx538_53
                        cmp              ecx, 6
                                                                                        jne   .Lx538_50
                        cmp              edx, 6
                                                                                        jne   .Lx538_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx538_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx538_51
                                                                                        jmp   .Lx538_52
.Lx538_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx538_53
.Lx538_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx538_54
.Lx538_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx538_54
.Lx538_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx538_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n528_op11_α
                                                                                        jmp   n527_var_ref_α
n526_op11_β:
                                                                                        jmp   n528_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n529_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
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
                                                                                        je    proc_a$2F2_ω
                                                                                        jmp   proc_a$2F2_ω
n528_op11_β:
                                                                                        jmp   proc_a$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lx544_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx544_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_41
                        cmp              esi, 1
                                                                                        jne   .Lx544_55
                        mov              r8, rax
                                                                                        jmp   .Lx544_40
.Lx544_55:
                        cmp              esi, 2
                                                                                        jne   .Lx544_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx544_41
                        mov              r8, rax
                                                                                        jmp   .Lx544_40
.Lx544_56:
                        cmp              eax, 13
                                                                                        jne   .Lx544_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_41
                        cmp              rax, r8
                                                                                        je    .Lx544_41
                        mov              r8, rax
                                                                                        jmp   .Lx544_40
.Lx544_41:
                        lea              r9, [rbp + 176]
.Lx544_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx544_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_43
                        cmp              esi, 1
                                                                                        jne   .Lx544_57
                        mov              r9, rax
                                                                                        jmp   .Lx544_42
.Lx544_57:
                        cmp              esi, 2
                                                                                        jne   .Lx544_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx544_43
                        mov              r9, rax
                                                                                        jmp   .Lx544_42
.Lx544_58:
                        cmp              eax, 13
                                                                                        jne   .Lx544_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_43
                        cmp              rax, r9
                                                                                        je    .Lx544_43
                        mov              r9, rax
                                                                                        jmp   .Lx544_42
.Lx544_43:
                        cmp              r8, r9
                                                                                        je    .Lx544_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx544_44
                        cmp              eax, 99
                                                                                        je    .Lx544_44
                        cmp              eax, 13
                                                                                        jne   .Lx544_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx544_44
                                                                                        jmp   .Lx544_45
.Lx544_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx544_53
                        cmp              eax, 99
                                                                                        je    .Lx544_53
                        cmp              eax, 13
                                                                                        jne   .Lx544_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx544_53
                                                                                        jmp   .Lx544_46
.Lx544_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx544_53
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
                                                                                        jmp   .Lx544_51
.Lx544_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx544_47
                        cmp              eax, 99
                                                                                        je    .Lx544_47
                        cmp              eax, 13
                                                                                        jne   .Lx544_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx544_47
                                                                                        jmp   .Lx544_48
.Lx544_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx544_53
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
                                                                                        jmp   .Lx544_51
.Lx544_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx544_49
                        cmp              edx, 14
                                                                                        je    .Lx544_53
                                                                                        jmp   .Lx544_52
.Lx544_49:
                        cmp              edx, 14
                                                                                        je    .Lx544_52
                        cmp              ecx, 7
                                                                                        je    .Lx544_53
                        cmp              edx, 7
                                                                                        je    .Lx544_53
                        cmp              ecx, 6
                                                                                        jne   .Lx544_50
                        cmp              edx, 6
                                                                                        jne   .Lx544_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx544_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx544_51
                                                                                        jmp   .Lx544_52
.Lx544_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx544_53
.Lx544_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx544_54
.Lx544_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx544_54
.Lx544_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx544_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n528_op11_α
                                                                                        jmp   n531_move_label_α
n530_op11_β:
                                                                                        jmp   n528_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n531_move_label_α:
                        lea              rax, [rip + n528_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_a$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n532_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n532_disjunction_β:
                                                                                        jmp   proc_a$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F2_β:
                                                                                        jmp   n532_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 344]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F2_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F2_dcα:
                        pop              r11
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 336], r11
                        lea              rax, [rip + .Lx549_2]
                        mov              qword ptr [rbp + 344], rax
                        lea              rax, [rip + .Lx549_3]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 304
                        mov              edx, 336
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a$2F2_α_body
.Lx549_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -368
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx549_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -368
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a$2F1_α
proc_a$2F1_α:
                        .global          proc_a$2F1_α
                        .global          proc_a$2F1_β
                        .global          proc_a$2F1_γ
                        .global          proc_a$2F1_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
proc_a$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx557_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx557_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx557_101
.Lx557_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx557_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   n551_var_ref_α
n550_op11_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n552_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n553_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n553_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx562_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx562_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx562_41
                        cmp              esi, 1
                                                                                        jne   .Lx562_55
                        mov              r8, rax
                                                                                        jmp   .Lx562_40
.Lx562_55:
                        cmp              esi, 2
                                                                                        jne   .Lx562_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx562_41
                        mov              r8, rax
                                                                                        jmp   .Lx562_40
.Lx562_56:
                        cmp              eax, 13
                                                                                        jne   .Lx562_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx562_41
                        cmp              rax, r8
                                                                                        je    .Lx562_41
                        mov              r8, rax
                                                                                        jmp   .Lx562_40
.Lx562_41:
                        lea              r9, [rbp + 160]
.Lx562_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx562_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx562_43
                        cmp              esi, 1
                                                                                        jne   .Lx562_57
                        mov              r9, rax
                                                                                        jmp   .Lx562_42
.Lx562_57:
                        cmp              esi, 2
                                                                                        jne   .Lx562_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx562_43
                        mov              r9, rax
                                                                                        jmp   .Lx562_42
.Lx562_58:
                        cmp              eax, 13
                                                                                        jne   .Lx562_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx562_43
                        cmp              rax, r9
                                                                                        je    .Lx562_43
                        mov              r9, rax
                                                                                        jmp   .Lx562_42
.Lx562_43:
                        cmp              r8, r9
                                                                                        je    .Lx562_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx562_44
                        cmp              eax, 99
                                                                                        je    .Lx562_44
                        cmp              eax, 13
                                                                                        jne   .Lx562_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx562_44
                                                                                        jmp   .Lx562_45
.Lx562_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx562_53
                        cmp              eax, 99
                                                                                        je    .Lx562_53
                        cmp              eax, 13
                                                                                        jne   .Lx562_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx562_53
                                                                                        jmp   .Lx562_46
.Lx562_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx562_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx562_53
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
                                                                                        jmp   .Lx562_51
.Lx562_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx562_47
                        cmp              eax, 99
                                                                                        je    .Lx562_47
                        cmp              eax, 13
                                                                                        jne   .Lx562_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx562_47
                                                                                        jmp   .Lx562_48
.Lx562_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx562_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx562_53
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
                                                                                        jmp   .Lx562_51
.Lx562_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx562_49
                        cmp              edx, 14
                                                                                        je    .Lx562_53
                                                                                        jmp   .Lx562_52
.Lx562_49:
                        cmp              edx, 14
                                                                                        je    .Lx562_52
                        cmp              ecx, 7
                                                                                        je    .Lx562_53
                        cmp              edx, 7
                                                                                        je    .Lx562_53
                        cmp              ecx, 6
                                                                                        jne   .Lx562_50
                        cmp              edx, 6
                                                                                        jne   .Lx562_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx562_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx562_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx562_51
                                                                                        jmp   .Lx562_52
.Lx562_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx562_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx562_53
.Lx562_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx562_54
.Lx562_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx562_54
.Lx562_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx562_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n555_op11_α
                                                                                        jmp   n554_move_label_α
n553_op11_β:
                                                                                        jmp   n555_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n554_move_label_α:
                        lea              rax, [rip + n555_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_a$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n555_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   proc_a$2F1_ω
n555_op11_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n556_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n556_disjunction_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_β:
                                                                                        jmp   n556_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_dcα:
                        pop              r11
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 224], r11
                        lea              rax, [rip + .Lx568_2]
                        mov              qword ptr [rbp + 232], rax
                        lea              rax, [rip + .Lx568_3]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 224
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a$2F1_α_body
.Lx568_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx568_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "clause/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_clause$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "run/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_run$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "run/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_run$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1664
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "current_prolog_flag/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_current_prolog_flag$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "gspace/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_gspace$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1408
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          ",/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_$2C$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "test_clause_gc/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_test_clause_gc$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "cl/8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_cl$2F8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 8
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "a/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_a$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_a$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "a/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_a$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_a$2F1_dcα]
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
                        sub              rsp, 184
                        mov              rdi, rsp
                        mov              ecx, 184
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n570_lit_string_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n571_lit_integer_α
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_integer_α:
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n572_op11_α
.Lx576_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n573_call_proc_staged_α
n572_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx579_20
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx579_21
.Lx579_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_arg_stage@PLT
.Lx579_21:
                        mov              rdi, qword ptr [rip + .Lx579_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx579_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx579_3]
                        lea              rdx, [rip + .Lx579_4]
                                                                                        jmp   rax
.Lx579_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx579_2
.Lx579_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx579_2
.Lx579_1:
                        call             rt_faildescr@PLT
.Lx579_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n573_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 184
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 184
                        ret
                        .section         .note.GNU-stack,"",@progbits
