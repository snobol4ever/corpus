                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_chained_detached_goal$2F2_α
proc_chained_detached_goal$2F2_α:
                        .global          proc_chained_detached_goal$2F2_α
                        .global          proc_chained_detached_goal$2F2_β
                        .global          proc_chained_detached_goal$2F2_γ
                        .global          proc_chained_detached_goal$2F2_ω
                        sub              rsp, 816
                        mov              [rsp + 792], rcx
                        mov              [rsp + 800], rdx
                        mov              [rsp + 808], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 720
                        mov              edx, 784
                        call             rt_jmp_frame_lexprep2@PLT
proc_chained_detached_goal$2F2_α_body:
                        lea              rax, [rip + n13_suspend_β]
                        mov              qword ptr [rbp + 720], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx22_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx22_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx22_101
.Lx22_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx22_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_chained_detached_goal$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_chained_detached_goal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx27_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx27_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        cmp              esi, 1
                                                                                        jne   .Lx27_55
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_55:
                        cmp              esi, 2
                                                                                        jne   .Lx27_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_56:
                        cmp              eax, 13
                                                                                        jne   .Lx27_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        cmp              rax, r8
                                                                                        je    .Lx27_41
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_41:
                        lea              r9, [rbp + 672]
.Lx27_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx27_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_43
                        cmp              esi, 1
                                                                                        jne   .Lx27_57
                        mov              r9, rax
                                                                                        jmp   .Lx27_42
.Lx27_57:
                        cmp              esi, 2
                                                                                        jne   .Lx27_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx27_43
                        mov              r9, rax
                                                                                        jmp   .Lx27_42
.Lx27_58:
                        cmp              eax, 13
                                                                                        jne   .Lx27_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_43
                        cmp              rax, r9
                                                                                        je    .Lx27_43
                        mov              r9, rax
                                                                                        jmp   .Lx27_42
.Lx27_43:
                        cmp              r8, r9
                                                                                        je    .Lx27_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_44
                        cmp              eax, 99
                                                                                        je    .Lx27_44
                        cmp              eax, 13
                                                                                        jne   .Lx27_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx27_44
                                                                                        jmp   .Lx27_45
.Lx27_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_53
                        cmp              eax, 99
                                                                                        je    .Lx27_53
                        cmp              eax, 13
                                                                                        jne   .Lx27_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx27_53
                                                                                        jmp   .Lx27_46
.Lx27_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx27_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx27_53
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
                                                                                        jmp   .Lx27_51
.Lx27_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_47
                        cmp              eax, 99
                                                                                        je    .Lx27_47
                        cmp              eax, 13
                                                                                        jne   .Lx27_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx27_47
                                                                                        jmp   .Lx27_48
.Lx27_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx27_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx27_53
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
                                                                                        jmp   .Lx27_51
.Lx27_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx27_49
                        cmp              edx, 14
                                                                                        je    .Lx27_53
                                                                                        jmp   .Lx27_52
.Lx27_49:
                        cmp              edx, 14
                                                                                        je    .Lx27_52
                        cmp              ecx, 7
                                                                                        je    .Lx27_53
                        cmp              edx, 7
                                                                                        je    .Lx27_53
                        cmp              ecx, 6
                                                                                        jne   .Lx27_50
                        cmp              edx, 6
                                                                                        jne   .Lx27_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx27_51
                                                                                        jmp   .Lx27_52
.Lx27_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx27_53
.Lx27_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx27_54
.Lx27_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx27_54
.Lx27_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx27_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_chained_detached_goal$2F2_ω
                                                                                        jmp   proc_chained_detached_goal$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_chained_detached_goal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx33_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx33_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_41
                        cmp              esi, 1
                                                                                        jne   .Lx33_55
                        mov              r8, rax
                                                                                        jmp   .Lx33_40
.Lx33_55:
                        cmp              esi, 2
                                                                                        jne   .Lx33_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx33_41
                        mov              r8, rax
                                                                                        jmp   .Lx33_40
.Lx33_56:
                        cmp              eax, 13
                                                                                        jne   .Lx33_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_41
                        cmp              rax, r8
                                                                                        je    .Lx33_41
                        mov              r8, rax
                                                                                        jmp   .Lx33_40
.Lx33_41:
                        lea              r9, [rbp + 592]
.Lx33_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx33_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_43
                        cmp              esi, 1
                                                                                        jne   .Lx33_57
                        mov              r9, rax
                                                                                        jmp   .Lx33_42
.Lx33_57:
                        cmp              esi, 2
                                                                                        jne   .Lx33_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx33_43
                        mov              r9, rax
                                                                                        jmp   .Lx33_42
.Lx33_58:
                        cmp              eax, 13
                                                                                        jne   .Lx33_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_43
                        cmp              rax, r9
                                                                                        je    .Lx33_43
                        mov              r9, rax
                                                                                        jmp   .Lx33_42
.Lx33_43:
                        cmp              r8, r9
                                                                                        je    .Lx33_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_44
                        cmp              eax, 99
                                                                                        je    .Lx33_44
                        cmp              eax, 13
                                                                                        jne   .Lx33_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx33_44
                                                                                        jmp   .Lx33_45
.Lx33_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_53
                        cmp              eax, 99
                                                                                        je    .Lx33_53
                        cmp              eax, 13
                                                                                        jne   .Lx33_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx33_53
                                                                                        jmp   .Lx33_46
.Lx33_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx33_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx33_53
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
                                                                                        jmp   .Lx33_51
.Lx33_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_47
                        cmp              eax, 99
                                                                                        je    .Lx33_47
                        cmp              eax, 13
                                                                                        jne   .Lx33_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx33_47
                                                                                        jmp   .Lx33_48
.Lx33_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx33_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx33_53
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
                                                                                        jmp   .Lx33_51
.Lx33_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx33_49
                        cmp              edx, 14
                                                                                        je    .Lx33_53
                                                                                        jmp   .Lx33_52
.Lx33_49:
                        cmp              edx, 14
                                                                                        je    .Lx33_52
                        cmp              ecx, 7
                                                                                        je    .Lx33_53
                        cmp              edx, 7
                                                                                        je    .Lx33_53
                        cmp              ecx, 6
                                                                                        jne   .Lx33_50
                        cmp              edx, 6
                                                                                        jne   .Lx33_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx33_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx33_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx33_51
                                                                                        jmp   .Lx33_52
.Lx33_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx33_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx33_53
.Lx33_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx33_54
.Lx33_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx33_54
.Lx33_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx33_54:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n10_var_ref_α
                                                                                        jmp   n13_suspend_α
n11_op11_β:
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_suspend_α:
                        lea              rax, [rip + n13_suspend_β]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_chained_detached_goal$2F2_γ
n13_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n15_op11_α
.Lx45_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n17_lit_string_α
n16_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n18_var_ref_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "chained_detached_goal"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
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
                                                                                        je    n5_op11_α
                                                                                        jmp   n21_call_proc_staged_α
n20_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx55_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx55_21
.Lx55_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx55_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx55_1
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4]
                                                                                        jmp   rax
.Lx55_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx55_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx55_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_1:
                        call             rt_faildescr@PLT
.Lx55_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n13_suspend_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "call_detached/1"
#-----------------------------------------------------------------------------------------------------------------------
proc_chained_detached_goal$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_chained_detached_goal$2F2_β:
                                                                                        jmp   qword ptr [rbp + 720]
#-----------------------------------------------------------------------------------------------------------------------
proc_chained_detached_goal$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_chained_detached_goal$2F2_res]
                        push             rax
                        mov              rax, [rbp + 792]
                        mov              rbp, [rbp + 808]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_chained_detached_goal$2F2_ω:
                        mov              rax, [rbp + 800]
                        lea              rsp, [rbp + 816]
                        mov              rbp, [rbp + 808]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_call_detached$2F1_α
proc_call_detached$2F1_α:
                        .global          proc_call_detached$2F1_α
                        .global          proc_call_detached$2F1_β
                        .global          proc_call_detached$2F1_γ
                        .global          proc_call_detached$2F1_ω
                        sub              rsp, 2192
                        mov              [rsp + 2168], rcx
                        mov              [rsp + 2176], rdx
                        mov              [rsp + 2184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2032
                        mov              edx, 2160
                        call             rt_jmp_frame_lexprep2@PLT
proc_call_detached$2F1_α_body:
                        lea              rax, [rip + n111_suspend_β]
                        mov              qword ptr [rbp + 2032], rax
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx112_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx112_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx112_101
.Lx112_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx112_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n57_var_ref_α
n56_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1968]
                        lea              r8, [rbp + 1968]
.Lx117_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx117_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_41
                        cmp              esi, 1
                                                                                        jne   .Lx117_55
                        mov              r8, rax
                                                                                        jmp   .Lx117_40
.Lx117_55:
                        cmp              esi, 2
                                                                                        jne   .Lx117_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx117_41
                        mov              r8, rax
                                                                                        jmp   .Lx117_40
.Lx117_56:
                        cmp              eax, 13
                                                                                        jne   .Lx117_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_41
                        cmp              rax, r8
                                                                                        je    .Lx117_41
                        mov              r8, rax
                                                                                        jmp   .Lx117_40
.Lx117_41:
                        lea              r9, [rbp + 1984]
.Lx117_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx117_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_43
                        cmp              esi, 1
                                                                                        jne   .Lx117_57
                        mov              r9, rax
                                                                                        jmp   .Lx117_42
.Lx117_57:
                        cmp              esi, 2
                                                                                        jne   .Lx117_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx117_43
                        mov              r9, rax
                                                                                        jmp   .Lx117_42
.Lx117_58:
                        cmp              eax, 13
                                                                                        jne   .Lx117_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_43
                        cmp              rax, r9
                                                                                        je    .Lx117_43
                        mov              r9, rax
                                                                                        jmp   .Lx117_42
.Lx117_43:
                        cmp              r8, r9
                                                                                        je    .Lx117_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx117_44
                        cmp              eax, 99
                                                                                        je    .Lx117_44
                        cmp              eax, 13
                                                                                        jne   .Lx117_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx117_44
                                                                                        jmp   .Lx117_45
.Lx117_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx117_53
                        cmp              eax, 99
                                                                                        je    .Lx117_53
                        cmp              eax, 13
                                                                                        jne   .Lx117_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx117_53
                                                                                        jmp   .Lx117_46
.Lx117_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx117_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx117_53
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
                                                                                        jmp   .Lx117_51
.Lx117_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx117_47
                        cmp              eax, 99
                                                                                        je    .Lx117_47
                        cmp              eax, 13
                                                                                        jne   .Lx117_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx117_47
                                                                                        jmp   .Lx117_48
.Lx117_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx117_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx117_53
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
                                                                                        jmp   .Lx117_51
.Lx117_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx117_49
                        cmp              edx, 14
                                                                                        je    .Lx117_53
                                                                                        jmp   .Lx117_52
.Lx117_49:
                        cmp              edx, 14
                                                                                        je    .Lx117_52
                        cmp              ecx, 7
                                                                                        je    .Lx117_53
                        cmp              edx, 7
                                                                                        je    .Lx117_53
                        cmp              ecx, 6
                                                                                        jne   .Lx117_50
                        cmp              edx, 6
                                                                                        jne   .Lx117_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx117_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx117_51
                                                                                        jmp   .Lx117_52
.Lx117_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx117_53
.Lx117_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx117_54
.Lx117_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx117_54
.Lx117_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx117_54:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n60_var_ref_α
n59_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
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
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   proc_call_detached$2F1_ω
n61_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n63_lit_string_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n64_op11_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n65_call_proc_staged_α
n64_op11_β:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α:
                        mov              qword ptr [rbp + 1808], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx125_20
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx125_21
.Lx125_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        call             rt_arg_stage@PLT
.Lx125_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx125_22
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx125_23
.Lx125_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx125_23:
                        mov              edi, 12
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx125_1
                        lea              rcx, [rip + .Lx125_3]
                        lea              rdx, [rip + .Lx125_4]
                                                                                        jmp   rax
.Lx125_3:
                        mov              qword ptr [rbp + 1816], rsp
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax
                                                                                        jne   .Lx125_5
                        mov              qword ptr [rbp + 1808], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx125_2
.Lx125_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx125_2
.Lx125_4:
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax
                                                                                        jne   .Lx125_6
                        mov              qword ptr [rbp + 1808], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx125_2
.Lx125_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx125_2
.Lx125_1:
                        call             rt_faildescr@PLT
.Lx125_2:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n66_lit_string_α
n65_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1816]
                                                                                        jmp   qword ptr [rsp]
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "foo/2"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n67_var_ref_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "thread-"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n68_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_20
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx130_21
.Lx130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_arg_stage@PLT
.Lx130_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_22
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx130_23
.Lx130_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx130_23:
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx130_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_1:
                        call             rt_faildescr@PLT
.Lx130_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n69_lit_string_α
n68_call_proc_staged_β:
                                                                                        jmp   n61_op11_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "gensym/2"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n70_lit_string_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n71_var_ref_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n73_lit_string_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n74_op11_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n75_op11_α
n74_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n76_op11_α
n75_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n77_lit_string_α
n76_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n78_lit_string_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "thread_create"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n79_lit_string_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "catch"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n80_lit_string_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "ignore"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n81_var_ref_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "detached_goal_2"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n84_op11_α
n83_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n85_var_ref_α
n84_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n87_op11_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 616]
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
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n88_var_ref_α
n87_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n90_lit_string_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n91_var_ref_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "alias"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n92_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n93_lit_string_α
n92_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n94_lit_string_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n95_lit_string_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "detached"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n96_op11_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n97_lit_string_α
n96_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n98_op11_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n99_op11_α
n98_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n100_op11_α
n99_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n101_lit_string_α
n100_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n102_var_ref_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "exception"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n103_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n104_lit_string_α
n103_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n105_lit_string_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n106_var_ref_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n107_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n108_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    proc_call_detached$2F1_ω
                                                                                        jmp   n109_op11_α
n108_op11_β:
                                                                                        jmp   proc_call_detached$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n110_call_proc_staged_α
n109_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx182_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx182_21
.Lx182_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx182_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx182_22
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx182_23
.Lx182_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        call             rt_arg_stage@PLT
.Lx182_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx182_24
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx182_25
.Lx182_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        call             rt_arg_stage@PLT
.Lx182_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx182_26
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx182_27
.Lx182_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_arg_stage@PLT
.Lx182_27:
                        mov              rdi, qword ptr [rip + .Lx182_0]
                        mov              esi, 4
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx182_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx182_3]
                        lea              rdx, [rip + .Lx182_4]
                                                                                        jmp   rax
.Lx182_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx182_2
.Lx182_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx182_2
.Lx182_1:
                        call             rt_faildescr@PLT
.Lx182_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n68_call_proc_staged_β
                                                                                        jmp   n111_suspend_α
n110_call_proc_staged_β:
                                                                                        jmp   n68_call_proc_staged_β
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "setup_call_catcher_cleanup/4"
#-----------------------------------------------------------------------------------------------------------------------
n111_suspend_α:
                        lea              rax, [rip + n111_suspend_β]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_call_detached$2F1_γ
n111_suspend_β:
                                                                                        jmp   n110_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_call_detached$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_call_detached$2F1_β:
                                                                                        jmp   qword ptr [rbp + 2032]
#-----------------------------------------------------------------------------------------------------------------------
proc_call_detached$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_call_detached$2F1_res]
                        push             rax
                        mov              rax, [rbp + 2168]
                        mov              rbp, [rbp + 2184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_call_detached$2F1_ω:
                        mov              rax, [rbp + 2176]
                        lea              rsp, [rbp + 2192]
                        mov              rbp, [rbp + 2184]
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
                        lea              rax, [rip + n188_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n187_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx193_60:
                        .section         .rodata
.Lbynamegenfn81:        .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn81]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_prolog_flag$2F2_ω
                                                                                        jmp   n188_suspend_α
n187_call_builtin_gen_β:
                                                                                        jmp   .Lx193_60
#-----------------------------------------------------------------------------------------------------------------------
n188_suspend_α:
                        lea              rax, [rip + n188_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_prolog_flag$2F2_γ
n188_suspend_β:
                                                                                        jmp   n187_call_builtin_gen_β
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
                        .globl           proc_test_cgc_1$2F0_α
proc_test_cgc_1$2F0_α:
                        .global          proc_test_cgc_1$2F0_α
                        .global          proc_test_cgc_1$2F0_β
                        .global          proc_test_cgc_1$2F0_γ
                        .global          proc_test_cgc_1$2F0_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 352
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_cgc_1$2F0_α_body:
                        lea              rax, [rip + n203_suspend_β]
                        mov              qword ptr [rbp + 352], rax
#-----------------------------------------------------------------------------------------------------------------------
n196_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx208_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx208_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx208_101
.Lx208_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx208_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_cgc_1$2F0_ω
                                                                                        jmp   n197_lit_string_α
n196_op11_β:
                                                                                        jmp   proc_test_cgc_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n198_lit_string_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "threads"
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n199_call_proc_staged_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx212_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx212_21
.Lx212_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx212_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx212_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx212_23
.Lx212_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx212_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx212_1
                        lea              rcx, [rip + .Lx212_3]
                        lea              rdx, [rip + .Lx212_4]
                                                                                        jmp   rax
.Lx212_3:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx212_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx212_2
.Lx212_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx212_2
.Lx212_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx212_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx212_2
.Lx212_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx212_2
.Lx212_1:
                        call             rt_faildescr@PLT
.Lx212_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n200_op19_α
n199_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 296]
                                                                                        jmp   qword ptr [rsp]
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n200_op19_α:
                                                                                        jmp   n202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_cgc_1$2F0_ω
                                                                                        jmp   n203_suspend_α
n201_op11_β:
                                                                                        jmp   proc_test_cgc_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n204_lit_integer_α
.Lx215_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n203_suspend_α:
                        lea              rax, [rip + n203_suspend_β]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_cgc_1$2F0_γ
n203_suspend_β:
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n206_call_proc_staged_α
.Lx218_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
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
                                                                                        je    proc_test_cgc_1$2F0_ω
                                                                                        jmp   proc_test_cgc_1$2F0_ω
n205_op11_β:
                                                                                        jmp   proc_test_cgc_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx221_21
.Lx221_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx221_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx221_23
.Lx221_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx221_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx221_1
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4]
                                                                                        jmp   rax
.Lx221_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx221_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx221_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_1:
                        call             rt_faildescr@PLT
.Lx221_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n205_op11_α
                                                                                        jmp   n207_suspend_α
n206_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "chained_detached_goal/2"
#-----------------------------------------------------------------------------------------------------------------------
n207_suspend_α:
                        lea              rax, [rip + n207_suspend_β]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_cgc_1$2F0_γ
n207_suspend_β:
                                                                                        jmp   n206_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 352]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_cgc_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 376]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc_1$2F0_ω:
                        mov              rax, [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n230_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx231_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx231_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx231_101
.Lx231_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx231_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n225_lit_string_α
n224_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n226_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "call_detached"
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n227_op11_α
.Lx233_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n227_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n229_op11_α
                                                                                        jmp   n228_call_proc_staged_α
n227_op11_β:
                                                                                        jmp   n229_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx236_21
.Lx236_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx236_21:
                        mov              rdi, qword ptr [rip + .Lx236_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx236_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_1:
                        call             rt_faildescr@PLT
.Lx236_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n229_op11_α
                                                                                        jmp   n230_suspend_α
n228_call_proc_staged_β:
                                                                                        jmp   n229_op11_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n229_op11_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n229_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_suspend_α:
                        lea              rax, [rip + n230_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n230_suspend_β:
                                                                                        jmp   n228_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n251_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n240_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx252_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx252_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx252_101
.Lx252_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx252_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n241_lit_string_α
n240_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n242_lit_string_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "test_cgc_1"
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n243_lit_string_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n244_lit_string_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n245_lit_integer_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "test_cgc_1"
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n246_op11_α
.Lx257_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
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
                                                                                        jmp   n247_lit_string_α
n246_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n248_op11_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
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
                                                                                        je    n250_op11_α
                                                                                        jmp   n249_call_proc_staged_α
n248_op11_β:
                                                                                        jmp   n250_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx262_21
.Lx262_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx262_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx262_23
.Lx262_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx262_23:
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n250_op11_α
                                                                                        jmp   n251_suspend_α
n249_call_proc_staged_β:
                                                                                        jmp   n250_op11_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
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
n250_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n251_suspend_α:
                        lea              rax, [rip + n251_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n251_suspend_β:
                                                                                        jmp   n249_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx274_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx274_101
.Lx274_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx274_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n267_lit_string_α
n266_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n268_lit_integer_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "detached_goal_2"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n269_lit_string_α
.Lx276_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n270_op11_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
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
                                                                                        je    n272_op11_α
                                                                                        jmp   n271_call_proc_staged_α
n270_op11_β:
                                                                                        jmp   n272_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx280_21
.Lx280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx280_21:
                        mov              rdi, qword ptr [rip + .Lx280_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n272_op11_α
                                                                                        jmp   n273_suspend_α
n271_call_proc_staged_β:
                                                                                        jmp   n272_op11_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
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
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n272_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n273_suspend_β:
                                                                                        jmp   n271_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
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
                        lea              rax, [rip + n291_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx292_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx292_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx292_101
.Lx292_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx292_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n285_lit_string_α
n284_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n286_lit_string_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n287_lit_integer_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n288_op11_α
.Lx295_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
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
                                                                                        je    n290_op11_α
                                                                                        jmp   n289_call_proc_staged_α
n288_op11_β:
                                                                                        jmp   n290_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx298_21
.Lx298_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx298_21:
                        mov              rdi, qword ptr [rip + .Lx298_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx298_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx298_3]
                        lea              rdx, [rip + .Lx298_4]
                                                                                        jmp   rax
.Lx298_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx298_2
.Lx298_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx298_2
.Lx298_1:
                        call             rt_faildescr@PLT
.Lx298_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n290_op11_α
                                                                                        jmp   n291_suspend_α
n289_call_proc_staged_β:
                                                                                        jmp   n290_op11_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
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
n290_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n291_suspend_α:
                        lea              rax, [rip + n291_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n291_suspend_β:
                                                                                        jmp   n289_call_proc_staged_β
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
                        lea              rax, [rip + n304_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n303_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx307_60:
                        .section         .rodata
.Lbynamegenfn131:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn131]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n304_suspend_α
n303_call_builtin_gen_β:
                                                                                        jmp   .Lx307_60
#-----------------------------------------------------------------------------------------------------------------------
n304_suspend_α:
                        lea              rax, [rip + n304_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n304_suspend_β:
                                                                                        jmp   n303_call_builtin_gen_β
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
                        .globl           proc_detached_goal_2$2F2_α
proc_detached_goal_2$2F2_α:
                        .global          proc_detached_goal_2$2F2_α
                        .global          proc_detached_goal_2$2F2_β
                        .global          proc_detached_goal_2$2F2_γ
                        .global          proc_detached_goal_2$2F2_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_detached_goal_2$2F2_α_body:
                        lea              rax, [rip + n324_suspend_β]
                        mov              qword ptr [rbp + 464], rax
#-----------------------------------------------------------------------------------------------------------------------
n310_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx325_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx325_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx325_101
.Lx325_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx325_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_detached_goal_2$2F2_ω
                                                                                        jmp   n311_var_ref_α
n310_op11_β:
                                                                                        jmp   proc_detached_goal_2$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n313_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
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
.Lx330_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx330_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              esi, 1
                                                                                        jne   .Lx330_55
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_55:
                        cmp              esi, 2
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_56:
                        cmp              eax, 13
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              rax, r8
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_41:
                        lea              r9, [rbp + 416]
.Lx330_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx330_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              esi, 1
                                                                                        jne   .Lx330_57
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_57:
                        cmp              esi, 2
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_58:
                        cmp              eax, 13
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              rax, r9
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_43:
                        cmp              r8, r9
                                                                                        je    .Lx330_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_44
                        cmp              eax, 99
                                                                                        je    .Lx330_44
                        cmp              eax, 13
                                                                                        jne   .Lx330_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx330_44
                                                                                        jmp   .Lx330_45
.Lx330_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_53
                        cmp              eax, 99
                                                                                        je    .Lx330_53
                        cmp              eax, 13
                                                                                        jne   .Lx330_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_46
.Lx330_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_47
                        cmp              eax, 99
                                                                                        je    .Lx330_47
                        cmp              eax, 13
                                                                                        jne   .Lx330_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_47
                                                                                        jmp   .Lx330_48
.Lx330_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx330_49
                        cmp              edx, 14
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_52
.Lx330_49:
                        cmp              edx, 14
                                                                                        je    .Lx330_52
                        cmp              ecx, 7
                                                                                        je    .Lx330_53
                        cmp              edx, 7
                                                                                        je    .Lx330_53
                        cmp              ecx, 6
                                                                                        jne   .Lx330_50
                        cmp              edx, 6
                                                                                        jne   .Lx330_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx330_51
                                                                                        jmp   .Lx330_52
.Lx330_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
.Lx330_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx330_54
.Lx330_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx330_54
.Lx330_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx330_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n314_var_ref_α
n313_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_op11_α:
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
                                                                                        je    proc_detached_goal_2$2F2_ω
                                                                                        jmp   proc_detached_goal_2$2F2_ω
n315_op11_β:
                                                                                        jmp   proc_detached_goal_2$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n317_op11_α:
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
.Lx336_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx336_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx336_41
                        cmp              esi, 1
                                                                                        jne   .Lx336_55
                        mov              r8, rax
                                                                                        jmp   .Lx336_40
.Lx336_55:
                        cmp              esi, 2
                                                                                        jne   .Lx336_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx336_41
                        mov              r8, rax
                                                                                        jmp   .Lx336_40
.Lx336_56:
                        cmp              eax, 13
                                                                                        jne   .Lx336_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx336_41
                        cmp              rax, r8
                                                                                        je    .Lx336_41
                        mov              r8, rax
                                                                                        jmp   .Lx336_40
.Lx336_41:
                        lea              r9, [rbp + 336]
.Lx336_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx336_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx336_43
                        cmp              esi, 1
                                                                                        jne   .Lx336_57
                        mov              r9, rax
                                                                                        jmp   .Lx336_42
.Lx336_57:
                        cmp              esi, 2
                                                                                        jne   .Lx336_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx336_43
                        mov              r9, rax
                                                                                        jmp   .Lx336_42
.Lx336_58:
                        cmp              eax, 13
                                                                                        jne   .Lx336_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx336_43
                        cmp              rax, r9
                                                                                        je    .Lx336_43
                        mov              r9, rax
                                                                                        jmp   .Lx336_42
.Lx336_43:
                        cmp              r8, r9
                                                                                        je    .Lx336_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx336_44
                        cmp              eax, 99
                                                                                        je    .Lx336_44
                        cmp              eax, 13
                                                                                        jne   .Lx336_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx336_44
                                                                                        jmp   .Lx336_45
.Lx336_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx336_53
                        cmp              eax, 99
                                                                                        je    .Lx336_53
                        cmp              eax, 13
                                                                                        jne   .Lx336_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx336_53
                                                                                        jmp   .Lx336_46
.Lx336_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx336_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx336_53
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
                                                                                        jmp   .Lx336_51
.Lx336_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx336_47
                        cmp              eax, 99
                                                                                        je    .Lx336_47
                        cmp              eax, 13
                                                                                        jne   .Lx336_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx336_47
                                                                                        jmp   .Lx336_48
.Lx336_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx336_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx336_53
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
                                                                                        jmp   .Lx336_51
.Lx336_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx336_49
                        cmp              edx, 14
                                                                                        je    .Lx336_53
                                                                                        jmp   .Lx336_52
.Lx336_49:
                        cmp              edx, 14
                                                                                        je    .Lx336_52
                        cmp              ecx, 7
                                                                                        je    .Lx336_53
                        cmp              edx, 7
                                                                                        je    .Lx336_53
                        cmp              ecx, 6
                                                                                        jne   .Lx336_50
                        cmp              edx, 6
                                                                                        jne   .Lx336_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx336_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx336_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx336_51
                                                                                        jmp   .Lx336_52
.Lx336_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx336_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx336_53
.Lx336_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx336_54
.Lx336_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx336_54
.Lx336_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx336_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n318_var_ref_α
n317_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n319_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n320_lit_real_α
n319_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_real_α:
                        mov              qword ptr [rbp + 208], 7
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n321_call_proc_staged_α
.Lx341_0:
                        .quad            4547007122018943789
#-----------------------------------------------------------------------------------------------------------------------
n321_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx343_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx343_21
.Lx343_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx343_21:
                        mov              rdi, qword ptr [rip + .Lx343_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx343_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx343_3]
                        lea              rdx, [rip + .Lx343_4]
                                                                                        jmp   rax
.Lx343_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx343_2
.Lx343_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx343_2
.Lx343_1:
                        call             rt_faildescr@PLT
.Lx343_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n319_call_proc_staged_β
                                                                                        jmp   n322_lit_string_α
n321_call_proc_staged_β:
                                                                                        jmp   n319_call_proc_staged_β
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "sleep/1"
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n323_op11_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n323_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn346:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n321_call_proc_staged_β
                                                                                        jmp   n324_suspend_α
n323_op11_β:
                                                                                        jmp   n321_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n324_suspend_α:
                        lea              rax, [rip + n324_suspend_β]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_detached_goal_2$2F2_γ
n324_suspend_β:
                                                                                        jmp   n321_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_detached_goal_2$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_detached_goal_2$2F2_β:
                                                                                        jmp   qword ptr [rbp + 464]
#-----------------------------------------------------------------------------------------------------------------------
proc_detached_goal_2$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_detached_goal_2$2F2_res]
                        push             rax
                        mov              rax, [rbp + 520]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_detached_goal_2$2F2_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F2_α
proc_$call$2F2_α:
                        .global          proc_$call$2F2_α
                        .global          proc_$call$2F2_β
                        .global          proc_$call$2F2_γ
                        .global          proc_$call$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call$2F2_α_body:
                        lea              rax, [rip + n352_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n351_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx357_60:
                        .section         .rodata
.Lbynamegenfn150:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn150]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F2_ω
                                                                                        jmp   n352_suspend_α
n351_call_builtin_gen_β:
                                                                                        jmp   .Lx357_60
#-----------------------------------------------------------------------------------------------------------------------
n352_suspend_α:
                        lea              rax, [rip + n352_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F2_γ
n352_suspend_β:
                                                                                        jmp   n351_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_include$2F3_α
proc_include$2F3_α:
                        .global          proc_include$2F3_α
                        .global          proc_include$2F3_β
                        .global          proc_include$2F3_γ
                        .global          proc_include$2F3_ω
                        sub              rsp, 1264
                        mov              [rsp + 1240], rcx
                        mov              [rsp + 1248], rdx
                        mov              [rsp + 1256], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1136
                        mov              edx, 1232
                        call             rt_jmp_frame_lexprep2@PLT
proc_include$2F3_α_body:
                        lea              rax, [rip + n377_suspend_β]
                        mov              qword ptr [rbp + 1136], rax
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx398_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx398_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx398_101
.Lx398_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx398_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_include$2F3_ω
                                                                                        jmp   n361_var_ref_α
n360_op11_β:
                                                                                        jmp   proc_include$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n362_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx403_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx403_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_41
                        cmp              esi, 1
                                                                                        jne   .Lx403_55
                        mov              r8, rax
                                                                                        jmp   .Lx403_40
.Lx403_55:
                        cmp              esi, 2
                                                                                        jne   .Lx403_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx403_41
                        mov              r8, rax
                                                                                        jmp   .Lx403_40
.Lx403_56:
                        cmp              eax, 13
                                                                                        jne   .Lx403_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_41
                        cmp              rax, r8
                                                                                        je    .Lx403_41
                        mov              r8, rax
                                                                                        jmp   .Lx403_40
.Lx403_41:
                        lea              r9, [rbp + 1088]
.Lx403_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx403_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_43
                        cmp              esi, 1
                                                                                        jne   .Lx403_57
                        mov              r9, rax
                                                                                        jmp   .Lx403_42
.Lx403_57:
                        cmp              esi, 2
                                                                                        jne   .Lx403_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx403_43
                        mov              r9, rax
                                                                                        jmp   .Lx403_42
.Lx403_58:
                        cmp              eax, 13
                                                                                        jne   .Lx403_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_43
                        cmp              rax, r9
                                                                                        je    .Lx403_43
                        mov              r9, rax
                                                                                        jmp   .Lx403_42
.Lx403_43:
                        cmp              r8, r9
                                                                                        je    .Lx403_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx403_44
                        cmp              eax, 99
                                                                                        je    .Lx403_44
                        cmp              eax, 13
                                                                                        jne   .Lx403_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx403_44
                                                                                        jmp   .Lx403_45
.Lx403_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx403_53
                        cmp              eax, 99
                                                                                        je    .Lx403_53
                        cmp              eax, 13
                                                                                        jne   .Lx403_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx403_53
                                                                                        jmp   .Lx403_46
.Lx403_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx403_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx403_53
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
                                                                                        jmp   .Lx403_51
.Lx403_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx403_47
                        cmp              eax, 99
                                                                                        je    .Lx403_47
                        cmp              eax, 13
                                                                                        jne   .Lx403_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx403_47
                                                                                        jmp   .Lx403_48
.Lx403_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx403_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx403_53
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
                                                                                        jmp   .Lx403_51
.Lx403_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx403_49
                        cmp              edx, 14
                                                                                        je    .Lx403_53
                                                                                        jmp   .Lx403_52
.Lx403_49:
                        cmp              edx, 14
                                                                                        je    .Lx403_52
                        cmp              ecx, 7
                                                                                        je    .Lx403_53
                        cmp              edx, 7
                                                                                        je    .Lx403_53
                        cmp              ecx, 6
                                                                                        jne   .Lx403_50
                        cmp              edx, 6
                                                                                        jne   .Lx403_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx403_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx403_51
                                                                                        jmp   .Lx403_52
.Lx403_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx403_53
.Lx403_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx403_54
.Lx403_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx403_54
.Lx403_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx403_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n364_var_ref_α
n363_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    proc_include$2F3_ω
                                                                                        jmp   n367_var_ref_α
n365_op11_β:
                                                                                        jmp   proc_include$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n368_op11_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n369_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx410_2]
                                                                                        jmp   .Lx410_3
.Lx410_2:
                        .quad            .Lx410_2_s
.Lx410_2_s:
                        .string          "[]"
.Lx410_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n370_var_ref_α
n368_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n371_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n372_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx415_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              esi, 1
                                                                                        jne   .Lx415_55
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_55:
                        cmp              esi, 2
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_56:
                        cmp              eax, 13
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              rax, r8
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_41:
                        lea              r9, [rbp + 800]
.Lx415_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        cmp              esi, 1
                                                                                        jne   .Lx415_57
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_57:
                        cmp              esi, 2
                                                                                        jne   .Lx415_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_58:
                        cmp              eax, 13
                                                                                        jne   .Lx415_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        cmp              rax, r9
                                                                                        je    .Lx415_43
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_43:
                        cmp              r8, r9
                                                                                        je    .Lx415_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_44
                        cmp              eax, 99
                                                                                        je    .Lx415_44
                        cmp              eax, 13
                                                                                        jne   .Lx415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx415_44
                                                                                        jmp   .Lx415_45
.Lx415_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_53
                        cmp              eax, 99
                                                                                        je    .Lx415_53
                        cmp              eax, 13
                                                                                        jne   .Lx415_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_46
.Lx415_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx415_53
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
                                                                                        jmp   .Lx415_51
.Lx415_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_47
                        cmp              eax, 99
                                                                                        je    .Lx415_47
                        cmp              eax, 13
                                                                                        jne   .Lx415_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx415_47
                                                                                        jmp   .Lx415_48
.Lx415_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx415_53
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
                                                                                        jmp   .Lx415_51
.Lx415_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx415_49
                        cmp              edx, 14
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_52
.Lx415_49:
                        cmp              edx, 14
                                                                                        je    .Lx415_52
                        cmp              ecx, 7
                                                                                        je    .Lx415_53
                        cmp              edx, 7
                                                                                        je    .Lx415_53
                        cmp              ecx, 6
                                                                                        jne   .Lx415_50
                        cmp              edx, 6
                                                                                        jne   .Lx415_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx415_51
                                                                                        jmp   .Lx415_52
.Lx415_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx415_53
.Lx415_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx415_54
.Lx415_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx415_54
.Lx415_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx415_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n374_op11_α
                                                                                        jmp   n373_var_ref_α
n371_op11_β:
                                                                                        jmp   n374_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n375_op11_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n376_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n374_op11_α:
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
                                                                                        je    proc_include$2F3_ω
                                                                                        jmp   proc_include$2F3_ω
n374_op11_β:
                                                                                        jmp   proc_include$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx420_2]
                                                                                        jmp   .Lx420_3
.Lx420_2:
                        .quad            .Lx420_2_s
.Lx420_2_s:
                        .string          "[]"
.Lx420_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n377_suspend_α
n375_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n377_suspend_α:
                        lea              rax, [rip + n377_suspend_β]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_include$2F3_γ
n377_suspend_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n379_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n379_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx427_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_61
                        cmp              esi, 1
                                                                                        jne   .Lx427_62
                        mov              r8, rax
                                                                                        jmp   .Lx427_60
.Lx427_62:
                        cmp              esi, 2
                                                                                        jne   .Lx427_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_61
                        mov              r8, rax
                                                                                        jmp   .Lx427_60
.Lx427_63:
                        cmp              eax, 13
                                                                                        jne   .Lx427_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_61
                        cmp              rax, r8
                                                                                        je    .Lx427_61
                        mov              r8, rax
                                                                                        jmp   .Lx427_60
.Lx427_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_80
                        cmp              eax, 99
                                                                                        je    .Lx427_80
                        cmp              eax, 13
                                                                                        jne   .Lx427_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx427_80
                                                                                        jmp   .Lx427_74
.Lx427_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx427_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx427_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx427_73
                        lea              r9, [rbp + 704]
.Lx427_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_65
                        cmp              esi, 1
                                                                                        jne   .Lx427_66
                        mov              r9, rax
                                                                                        jmp   .Lx427_64
.Lx427_66:
                        cmp              esi, 2
                                                                                        jne   .Lx427_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_65
                        mov              r9, rax
                                                                                        jmp   .Lx427_64
.Lx427_67:
                        cmp              eax, 13
                                                                                        jne   .Lx427_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_65
                        cmp              rax, r9
                                                                                        je    .Lx427_65
                        mov              r9, rax
                                                                                        jmp   .Lx427_64
.Lx427_65:
                        lea              rcx, [rbp + 720]
.Lx427_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_69
                        cmp              esi, 1
                                                                                        jne   .Lx427_70
                        mov              rcx, rax
                                                                                        jmp   .Lx427_68
.Lx427_70:
                        cmp              esi, 2
                                                                                        jne   .Lx427_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_69
                        mov              rcx, rax
                                                                                        jmp   .Lx427_68
.Lx427_71:
                        cmp              eax, 13
                                                                                        jne   .Lx427_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_69
                        cmp              rax, rcx
                                                                                        je    .Lx427_69
                        mov              rcx, rax
                                                                                        jmp   .Lx427_68
.Lx427_69:
                        cmp              r9, rcx
                                                                                        je    .Lx427_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_75
                        cmp              eax, 99
                                                                                        je    .Lx427_75
                        cmp              eax, 13
                                                                                        jne   .Lx427_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx427_75
                                                                                        jmp   .Lx427_72
.Lx427_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_76
                        cmp              eax, 99
                                                                                        je    .Lx427_76
                        cmp              eax, 13
                                                                                        jne   .Lx427_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx427_76
                                                                                        jmp   .Lx427_72
.Lx427_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx427_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx427_72
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
                                                                                        jmp   .Lx427_77
.Lx427_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx427_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx427_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx427_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx427_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx427_72
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
                        lea              r9, [rbp + 704]
.Lx427_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_82
                        cmp              esi, 1
                                                                                        jne   .Lx427_83
                        mov              r9, rax
                                                                                        jmp   .Lx427_81
.Lx427_83:
                        cmp              esi, 2
                                                                                        jne   .Lx427_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_82
                        mov              r9, rax
                                                                                        jmp   .Lx427_81
.Lx427_84:
                        cmp              eax, 13
                                                                                        jne   .Lx427_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_82
                        cmp              rax, r9
                                                                                        je    .Lx427_82
                        mov              r9, rax
                                                                                        jmp   .Lx427_81
.Lx427_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_85
                        cmp              eax, 99
                                                                                        je    .Lx427_85
                        cmp              eax, 13
                                                                                        jne   .Lx427_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx427_85
                                                                                        jmp   .Lx427_86
.Lx427_85:
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
                                                                                        jmp   .Lx427_87
.Lx427_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx427_87:
                        lea              rcx, [rbp + 720]
.Lx427_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_89
                        cmp              esi, 1
                                                                                        jne   .Lx427_90
                        mov              rcx, rax
                                                                                        jmp   .Lx427_88
.Lx427_90:
                        cmp              esi, 2
                                                                                        jne   .Lx427_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_89
                        mov              rcx, rax
                                                                                        jmp   .Lx427_88
.Lx427_91:
                        cmp              eax, 13
                                                                                        jne   .Lx427_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_89
                        cmp              rax, rcx
                                                                                        je    .Lx427_89
                        mov              rcx, rax
                                                                                        jmp   .Lx427_88
.Lx427_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_92
                        cmp              eax, 99
                                                                                        je    .Lx427_92
                        cmp              eax, 13
                                                                                        jne   .Lx427_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx427_92
                                                                                        jmp   .Lx427_93
.Lx427_92:
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
                                                                                        jmp   .Lx427_94
.Lx427_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx427_94:
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
                                                                                        jmp   .Lx427_77
.Lx427_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx427_77
.Lx427_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx427_77:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n374_op11_α
                                                                                        jmp   n380_var_ref_α
n379_op11_β:
                                                                                        jmp   n374_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n381_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx432_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx432_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_41
                        cmp              esi, 1
                                                                                        jne   .Lx432_55
                        mov              r8, rax
                                                                                        jmp   .Lx432_40
.Lx432_55:
                        cmp              esi, 2
                                                                                        jne   .Lx432_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx432_41
                        mov              r8, rax
                                                                                        jmp   .Lx432_40
.Lx432_56:
                        cmp              eax, 13
                                                                                        jne   .Lx432_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_41
                        cmp              rax, r8
                                                                                        je    .Lx432_41
                        mov              r8, rax
                                                                                        jmp   .Lx432_40
.Lx432_41:
                        lea              r9, [rbp + 608]
.Lx432_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx432_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_43
                        cmp              esi, 1
                                                                                        jne   .Lx432_57
                        mov              r9, rax
                                                                                        jmp   .Lx432_42
.Lx432_57:
                        cmp              esi, 2
                                                                                        jne   .Lx432_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx432_43
                        mov              r9, rax
                                                                                        jmp   .Lx432_42
.Lx432_58:
                        cmp              eax, 13
                                                                                        jne   .Lx432_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_43
                        cmp              rax, r9
                                                                                        je    .Lx432_43
                        mov              r9, rax
                                                                                        jmp   .Lx432_42
.Lx432_43:
                        cmp              r8, r9
                                                                                        je    .Lx432_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx432_44
                        cmp              eax, 99
                                                                                        je    .Lx432_44
                        cmp              eax, 13
                                                                                        jne   .Lx432_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx432_44
                                                                                        jmp   .Lx432_45
.Lx432_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx432_53
                        cmp              eax, 99
                                                                                        je    .Lx432_53
                        cmp              eax, 13
                                                                                        jne   .Lx432_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx432_53
                                                                                        jmp   .Lx432_46
.Lx432_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx432_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx432_53
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
                                                                                        jmp   .Lx432_51
.Lx432_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx432_47
                        cmp              eax, 99
                                                                                        je    .Lx432_47
                        cmp              eax, 13
                                                                                        jne   .Lx432_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx432_47
                                                                                        jmp   .Lx432_48
.Lx432_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx432_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx432_53
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
                                                                                        jmp   .Lx432_51
.Lx432_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx432_49
                        cmp              edx, 14
                                                                                        je    .Lx432_53
                                                                                        jmp   .Lx432_52
.Lx432_49:
                        cmp              edx, 14
                                                                                        je    .Lx432_52
                        cmp              ecx, 7
                                                                                        je    .Lx432_53
                        cmp              edx, 7
                                                                                        je    .Lx432_53
                        cmp              ecx, 6
                                                                                        jne   .Lx432_50
                        cmp              edx, 6
                                                                                        jne   .Lx432_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx432_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx432_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx432_51
                                                                                        jmp   .Lx432_52
.Lx432_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx432_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx432_53
.Lx432_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx432_54
.Lx432_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx432_54
.Lx432_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx432_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n374_op11_α
                                                                                        jmp   n383_var_ref_α
n382_op11_β:
                                                                                        jmp   n374_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n384_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n385_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n385_call_proc_staged_α:
                        mov              qword ptr [rbp + 512], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx438_21
.Lx438_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx438_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx438_23
.Lx438_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx438_23:
                        mov              edi, 10
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx438_1
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4]
                                                                                        jmp   rax
.Lx438_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx438_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx438_2
.Lx438_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx438_2
.Lx438_4:
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx438_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx438_2
.Lx438_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx438_2
.Lx438_1:
                        call             rt_faildescr@PLT
.Lx438_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n387_var_ref_α
                                                                                        jmp   n386_var_ref_α
n385_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "$call/2"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n388_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n389_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n390_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n392_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n391_op11_α:
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
.Lx449_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              esi, 1
                                                                                        jne   .Lx449_55
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_55:
                        cmp              esi, 2
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_56:
                        cmp              eax, 13
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              rax, r8
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_41:
                        lea              r9, [rbp + 416]
.Lx449_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              esi, 1
                                                                                        jne   .Lx449_57
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_57:
                        cmp              esi, 2
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_58:
                        cmp              eax, 13
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              rax, r9
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_43:
                        cmp              r8, r9
                                                                                        je    .Lx449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_44
                        cmp              eax, 99
                                                                                        je    .Lx449_44
                        cmp              eax, 13
                                                                                        jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx449_44
                                                                                        jmp   .Lx449_45
.Lx449_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_53
                        cmp              eax, 99
                                                                                        je    .Lx449_53
                        cmp              eax, 13
                                                                                        jne   .Lx449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_46
.Lx449_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
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
                                                                                        jmp   .Lx449_51
.Lx449_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_47
                        cmp              eax, 99
                                                                                        je    .Lx449_47
                        cmp              eax, 13
                                                                                        jne   .Lx449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_47
                                                                                        jmp   .Lx449_48
.Lx449_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
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
                                                                                        jmp   .Lx449_51
.Lx449_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx449_49
                        cmp              edx, 14
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_52
.Lx449_49:
                        cmp              edx, 14
                                                                                        je    .Lx449_52
                        cmp              ecx, 7
                                                                                        je    .Lx449_53
                        cmp              edx, 7
                                                                                        je    .Lx449_53
                        cmp              ecx, 6
                                                                                        jne   .Lx449_50
                        cmp              edx, 6
                                                                                        jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx449_51
                                                                                        jmp   .Lx449_52
.Lx449_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
.Lx449_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx449_54
.Lx449_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx449_54
.Lx449_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx449_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n374_op11_α
                                                                                        jmp   n393_var_ref_α
n391_op11_β:
                                                                                        jmp   n374_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n392_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx450_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_61
                        cmp              esi, 1
                                                                                        jne   .Lx450_62
                        mov              r8, rax
                                                                                        jmp   .Lx450_60
.Lx450_62:
                        cmp              esi, 2
                                                                                        jne   .Lx450_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_61
                        mov              r8, rax
                                                                                        jmp   .Lx450_60
.Lx450_63:
                        cmp              eax, 13
                                                                                        jne   .Lx450_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_61
                        cmp              rax, r8
                                                                                        je    .Lx450_61
                        mov              r8, rax
                                                                                        jmp   .Lx450_60
.Lx450_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_80
                        cmp              eax, 99
                                                                                        je    .Lx450_80
                        cmp              eax, 13
                                                                                        jne   .Lx450_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx450_80
                                                                                        jmp   .Lx450_74
.Lx450_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx450_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx450_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx450_73
                        lea              r9, [rbp + 320]
.Lx450_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_65
                        cmp              esi, 1
                                                                                        jne   .Lx450_66
                        mov              r9, rax
                                                                                        jmp   .Lx450_64
.Lx450_66:
                        cmp              esi, 2
                                                                                        jne   .Lx450_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_65
                        mov              r9, rax
                                                                                        jmp   .Lx450_64
.Lx450_67:
                        cmp              eax, 13
                                                                                        jne   .Lx450_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_65
                        cmp              rax, r9
                                                                                        je    .Lx450_65
                        mov              r9, rax
                                                                                        jmp   .Lx450_64
.Lx450_65:
                        lea              rcx, [rbp + 336]
.Lx450_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx450_69
                        cmp              esi, 1
                                                                                        jne   .Lx450_70
                        mov              rcx, rax
                                                                                        jmp   .Lx450_68
.Lx450_70:
                        cmp              esi, 2
                                                                                        jne   .Lx450_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_69
                        mov              rcx, rax
                                                                                        jmp   .Lx450_68
.Lx450_71:
                        cmp              eax, 13
                                                                                        jne   .Lx450_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx450_69
                        cmp              rax, rcx
                                                                                        je    .Lx450_69
                        mov              rcx, rax
                                                                                        jmp   .Lx450_68
.Lx450_69:
                        cmp              r9, rcx
                                                                                        je    .Lx450_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_75
                        cmp              eax, 99
                                                                                        je    .Lx450_75
                        cmp              eax, 13
                                                                                        jne   .Lx450_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx450_75
                                                                                        jmp   .Lx450_72
.Lx450_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_76
                        cmp              eax, 99
                                                                                        je    .Lx450_76
                        cmp              eax, 13
                                                                                        jne   .Lx450_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx450_76
                                                                                        jmp   .Lx450_72
.Lx450_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx450_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx450_72
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
                                                                                        jmp   .Lx450_77
.Lx450_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx450_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx450_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx450_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx450_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx450_72
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
                        lea              r9, [rbp + 320]
.Lx450_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_82
                        cmp              esi, 1
                                                                                        jne   .Lx450_83
                        mov              r9, rax
                                                                                        jmp   .Lx450_81
.Lx450_83:
                        cmp              esi, 2
                                                                                        jne   .Lx450_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_82
                        mov              r9, rax
                                                                                        jmp   .Lx450_81
.Lx450_84:
                        cmp              eax, 13
                                                                                        jne   .Lx450_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_82
                        cmp              rax, r9
                                                                                        je    .Lx450_82
                        mov              r9, rax
                                                                                        jmp   .Lx450_81
.Lx450_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_85
                        cmp              eax, 99
                                                                                        je    .Lx450_85
                        cmp              eax, 13
                                                                                        jne   .Lx450_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx450_85
                                                                                        jmp   .Lx450_86
.Lx450_85:
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
                                                                                        jmp   .Lx450_87
.Lx450_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx450_87:
                        lea              rcx, [rbp + 336]
.Lx450_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx450_89
                        cmp              esi, 1
                                                                                        jne   .Lx450_90
                        mov              rcx, rax
                                                                                        jmp   .Lx450_88
.Lx450_90:
                        cmp              esi, 2
                                                                                        jne   .Lx450_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_89
                        mov              rcx, rax
                                                                                        jmp   .Lx450_88
.Lx450_91:
                        cmp              eax, 13
                                                                                        jne   .Lx450_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx450_89
                        cmp              rax, rcx
                                                                                        je    .Lx450_89
                        mov              rcx, rax
                                                                                        jmp   .Lx450_88
.Lx450_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_92
                        cmp              eax, 99
                                                                                        je    .Lx450_92
                        cmp              eax, 13
                                                                                        jne   .Lx450_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx450_92
                                                                                        jmp   .Lx450_93
.Lx450_92:
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
                                                                                        jmp   .Lx450_94
.Lx450_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx450_94:
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
                                                                                        jmp   .Lx450_77
.Lx450_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx450_77
.Lx450_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx450_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n374_op11_α
                                                                                        jmp   n393_var_ref_α
n392_op11_β:
                                                                                        jmp   n374_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n393_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n394_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n396_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n396_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx458_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx458_21
.Lx458_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx458_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx458_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx458_23
.Lx458_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx458_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx458_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx458_25
.Lx458_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx458_25:
                        mov              edi, 11
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx458_1
                        lea              rcx, [rip + .Lx458_3]
                        lea              rdx, [rip + .Lx458_4]
                                                                                        jmp   rax
.Lx458_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx458_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx458_2
.Lx458_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx458_2
.Lx458_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx458_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx458_2
.Lx458_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx458_2
.Lx458_1:
                        call             rt_faildescr@PLT
.Lx458_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n374_op11_α
                                                                                        jmp   n397_suspend_α
n396_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "include/3"
#-----------------------------------------------------------------------------------------------------------------------
n397_suspend_α:
                        lea              rax, [rip + n397_suspend_β]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_include$2F3_γ
n397_suspend_β:
                                                                                        jmp   n396_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_include$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_include$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1136]
#-----------------------------------------------------------------------------------------------------------------------
proc_include$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_include$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1240]
                        mov              rbp, [rbp + 1256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_include$2F3_ω:
                        mov              rax, [rbp + 1248]
                        lea              rsp, [rbp + 1264]
                        mov              rbp, [rbp + 1256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo$2F2_α
proc_foo$2F2_α:
                        .global          proc_foo$2F2_α
                        .global          proc_foo$2F2_β
                        .global          proc_foo$2F2_γ
                        .global          proc_foo$2F2_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_foo$2F2_α_body:
                        lea              rax, [rip + n465_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n462_var_ref_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n464_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
.Lx471_60:
                        .section         .rodata
.Lbynamegenfn193:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn193]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_foo$2F2_ω
                                                                                        jmp   n465_suspend_α
n464_call_builtin_gen_β:
                                                                                        jmp   .Lx471_60
#-----------------------------------------------------------------------------------------------------------------------
n465_suspend_α:
                        lea              rax, [rip + n465_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_foo$2F2_γ
n465_suspend_β:
                                                                                        jmp   n464_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F2_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_foo$2F2_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F2_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "chained_detached_goal/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_chained_detached_goal$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 784
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "call_detached/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_call_detached$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "current_prolog_flag/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_current_prolog_flag$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "test_cgc_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_test_cgc_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 368
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "detached_goal_2/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_detached_goal_2$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "$call/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_$call$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "include/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_include$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1232
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "foo/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_foo$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
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
                        sub              rsp, 184
                        mov              rdi, rsp
                        mov              ecx, 184
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n475_lit_integer_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "detached_goal_2"
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_integer_α:
                        mov              qword ptr [rsp + 48], 6
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n476_lit_string_α
.Lx480_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n477_op11_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
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
                                                                                        jmp   n478_call_proc_staged_α
n477_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_20
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx484_21
.Lx484_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_arg_stage@PLT
.Lx484_21:
                        mov              rdi, qword ptr [rip + .Lx484_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx484_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx484_3]
                        lea              rdx, [rip + .Lx484_4]
                                                                                        jmp   rax
.Lx484_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_1:
                        call             rt_faildescr@PLT
.Lx484_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n478_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "meta_predicate/1"
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
