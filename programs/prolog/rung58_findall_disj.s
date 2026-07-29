                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj3$2F1_α
proc_$disj3$2F1_α:
                        .global          proc_$disj3$2F1_α
                        .global          proc_$disj3$2F1_β
                        .global          proc_$disj3$2F1_γ
                        .global          proc_$disj3$2F1_ω
                        sub              rsp, 960
                        mov              [rsp + 936], rcx
                        mov              [rsp + 944], rdx
                        mov              [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj3$2F1_α_body:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 896], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx33_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx33_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx33_101
.Lx33_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx33_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx38_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx38_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_41
                        cmp              esi, 1
                                                                                        jne   .Lx38_55
                        mov              r8, rax
                                                                                        jmp   .Lx38_40
.Lx38_55:
                        cmp              esi, 2
                                                                                        jne   .Lx38_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx38_41
                        mov              r8, rax
                                                                                        jmp   .Lx38_40
.Lx38_56:
                        cmp              eax, 13
                                                                                        jne   .Lx38_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_41
                        cmp              rax, r8
                                                                                        je    .Lx38_41
                        mov              r8, rax
                                                                                        jmp   .Lx38_40
.Lx38_41:
                        lea              r9, [rbp + 848]
.Lx38_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx38_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_43
                        cmp              esi, 1
                                                                                        jne   .Lx38_57
                        mov              r9, rax
                                                                                        jmp   .Lx38_42
.Lx38_57:
                        cmp              esi, 2
                                                                                        jne   .Lx38_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx38_43
                        mov              r9, rax
                                                                                        jmp   .Lx38_42
.Lx38_58:
                        cmp              eax, 13
                                                                                        jne   .Lx38_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_43
                        cmp              rax, r9
                                                                                        je    .Lx38_43
                        mov              r9, rax
                                                                                        jmp   .Lx38_42
.Lx38_43:
                        cmp              r8, r9
                                                                                        je    .Lx38_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_44
                        cmp              eax, 99
                                                                                        je    .Lx38_44
                        cmp              eax, 13
                                                                                        jne   .Lx38_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx38_44
                                                                                        jmp   .Lx38_45
.Lx38_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_53
                        cmp              eax, 99
                                                                                        je    .Lx38_53
                        cmp              eax, 13
                                                                                        jne   .Lx38_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx38_53
                                                                                        jmp   .Lx38_46
.Lx38_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx38_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx38_53
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
                                                                                        jmp   .Lx38_51
.Lx38_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_47
                        cmp              eax, 99
                                                                                        je    .Lx38_47
                        cmp              eax, 13
                                                                                        jne   .Lx38_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx38_47
                                                                                        jmp   .Lx38_48
.Lx38_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx38_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx38_53
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
                                                                                        jmp   .Lx38_51
.Lx38_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx38_49
                        cmp              edx, 14
                                                                                        je    .Lx38_53
                                                                                        jmp   .Lx38_52
.Lx38_49:
                        cmp              edx, 14
                                                                                        je    .Lx38_52
                        cmp              ecx, 7
                                                                                        je    .Lx38_53
                        cmp              edx, 7
                                                                                        je    .Lx38_53
                        cmp              ecx, 6
                                                                                        jne   .Lx38_50
                        cmp              edx, 6
                                                                                        jne   .Lx38_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx38_51
                                                                                        jmp   .Lx38_52
.Lx38_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx38_53
.Lx38_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx38_54
.Lx38_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx38_54
.Lx38_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx38_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n8_op11_α
.Lx42_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_suspend_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_suspend_α:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n10_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx50_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_41
                        cmp              esi, 1
                                                                                        jne   .Lx50_55
                        mov              r8, rax
                                                                                        jmp   .Lx50_40
.Lx50_55:
                        cmp              esi, 2
                                                                                        jne   .Lx50_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_41
                        mov              r8, rax
                                                                                        jmp   .Lx50_40
.Lx50_56:
                        cmp              eax, 13
                                                                                        jne   .Lx50_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_41
                        cmp              rax, r8
                                                                                        je    .Lx50_41
                        mov              r8, rax
                                                                                        jmp   .Lx50_40
.Lx50_41:
                        lea              r9, [rbp + 640]
.Lx50_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_43
                        cmp              esi, 1
                                                                                        jne   .Lx50_57
                        mov              r9, rax
                                                                                        jmp   .Lx50_42
.Lx50_57:
                        cmp              esi, 2
                                                                                        jne   .Lx50_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_43
                        mov              r9, rax
                                                                                        jmp   .Lx50_42
.Lx50_58:
                        cmp              eax, 13
                                                                                        jne   .Lx50_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_43
                        cmp              rax, r9
                                                                                        je    .Lx50_43
                        mov              r9, rax
                                                                                        jmp   .Lx50_42
.Lx50_43:
                        cmp              r8, r9
                                                                                        je    .Lx50_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_44
                        cmp              eax, 99
                                                                                        je    .Lx50_44
                        cmp              eax, 13
                                                                                        jne   .Lx50_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx50_44
                                                                                        jmp   .Lx50_45
.Lx50_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_53
                        cmp              eax, 99
                                                                                        je    .Lx50_53
                        cmp              eax, 13
                                                                                        jne   .Lx50_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx50_53
                                                                                        jmp   .Lx50_46
.Lx50_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx50_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx50_53
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
                                                                                        jmp   .Lx50_51
.Lx50_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_47
                        cmp              eax, 99
                                                                                        je    .Lx50_47
                        cmp              eax, 13
                                                                                        jne   .Lx50_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx50_47
                                                                                        jmp   .Lx50_48
.Lx50_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx50_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx50_53
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
                                                                                        jmp   .Lx50_51
.Lx50_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx50_49
                        cmp              edx, 14
                                                                                        je    .Lx50_53
                                                                                        jmp   .Lx50_52
.Lx50_49:
                        cmp              edx, 14
                                                                                        je    .Lx50_52
                        cmp              ecx, 7
                                                                                        je    .Lx50_53
                        cmp              edx, 7
                                                                                        je    .Lx50_53
                        cmp              ecx, 6
                                                                                        jne   .Lx50_50
                        cmp              edx, 6
                                                                                        jne   .Lx50_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx50_51
                                                                                        jmp   .Lx50_52
.Lx50_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx50_53
.Lx50_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx50_54
.Lx50_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx50_54
.Lx50_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx50_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n16_op11_α
.Lx54_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n18_suspend_α
n16_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_suspend_α:
                        lea              rax, [rip + n18_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n18_suspend_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
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
                        lea              r9, [rbp + 432]
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n20_var_ref_α
n19_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n23_var_ref_α
n21_op11_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n24_op11_α
.Lx66_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n26_suspend_α
n24_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_suspend_α:
                        lea              rax, [rip + n26_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n26_suspend_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
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
                        lea              r9, [rbp + 224]
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
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n29_op11_α
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
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
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   proc_$disj3$2F1_ω
n29_op11_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n31_op11_α
.Lx78_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n29_op11_α
                                                                                        jmp   n32_suspend_α
n31_op11_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_suspend_α:
                        lea              rax, [rip + n32_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n32_suspend_β:
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_β:
                                                                                        jmp   qword ptr [rbp + 896]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj3$2F1_res]
                        push             rax
                        mov              rax, [rbp + 936]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_ω:
                        mov              rax, [rbp + 944]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F1_α
proc_$disj1$2F1_α:
                        .global          proc_$disj1$2F1_α
                        .global          proc_$disj1$2F1_β
                        .global          proc_$disj1$2F1_γ
                        .global          proc_$disj1$2F1_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj1$2F1_α_body:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx99_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx99_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx99_101
.Lx99_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx99_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   n83_var_ref_α
n82_op11_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
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
.Lx104_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        cmp              esi, 1
                                                                                        jne   .Lx104_55
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_55:
                        cmp              esi, 2
                                                                                        jne   .Lx104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_56:
                        cmp              eax, 13
                                                                                        jne   .Lx104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        cmp              rax, r8
                                                                                        je    .Lx104_41
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_41:
                        lea              r9, [rbp + 432]
.Lx104_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        cmp              esi, 1
                                                                                        jne   .Lx104_57
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_57:
                        cmp              esi, 2
                                                                                        jne   .Lx104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_58:
                        cmp              eax, 13
                                                                                        jne   .Lx104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        cmp              rax, r9
                                                                                        je    .Lx104_43
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_43:
                        cmp              r8, r9
                                                                                        je    .Lx104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_44
                        cmp              eax, 99
                                                                                        je    .Lx104_44
                        cmp              eax, 13
                                                                                        jne   .Lx104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx104_44
                                                                                        jmp   .Lx104_45
.Lx104_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_53
                        cmp              eax, 99
                                                                                        je    .Lx104_53
                        cmp              eax, 13
                                                                                        jne   .Lx104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_46
.Lx104_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx104_53
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
                                                                                        jmp   .Lx104_51
.Lx104_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_47
                        cmp              eax, 99
                                                                                        je    .Lx104_47
                        cmp              eax, 13
                                                                                        jne   .Lx104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx104_47
                                                                                        jmp   .Lx104_48
.Lx104_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx104_53
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
                                                                                        jmp   .Lx104_51
.Lx104_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx104_49
                        cmp              edx, 14
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_52
.Lx104_49:
                        cmp              edx, 14
                                                                                        je    .Lx104_52
                        cmp              ecx, 7
                                                                                        je    .Lx104_53
                        cmp              edx, 7
                                                                                        je    .Lx104_53
                        cmp              ecx, 6
                                                                                        jne   .Lx104_50
                        cmp              edx, 6
                                                                                        jne   .Lx104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx104_51
                                                                                        jmp   .Lx104_52
.Lx104_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx104_53
.Lx104_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx104_54
.Lx104_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx104_54
.Lx104_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx104_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n86_var_ref_α
n85_op11_β:
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   n89_var_ref_α
n87_op11_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n90_op11_α
.Lx108_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 4
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n92_suspend_α
n90_op11_β:
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F1_γ
n92_suspend_β:
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx116_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx116_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_41
                        cmp              esi, 1
                                                                                        jne   .Lx116_55
                        mov              r8, rax
                                                                                        jmp   .Lx116_40
.Lx116_55:
                        cmp              esi, 2
                                                                                        jne   .Lx116_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx116_41
                        mov              r8, rax
                                                                                        jmp   .Lx116_40
.Lx116_56:
                        cmp              eax, 13
                                                                                        jne   .Lx116_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_41
                        cmp              rax, r8
                                                                                        je    .Lx116_41
                        mov              r8, rax
                                                                                        jmp   .Lx116_40
.Lx116_41:
                        lea              r9, [rbp + 224]
.Lx116_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx116_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_43
                        cmp              esi, 1
                                                                                        jne   .Lx116_57
                        mov              r9, rax
                                                                                        jmp   .Lx116_42
.Lx116_57:
                        cmp              esi, 2
                                                                                        jne   .Lx116_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx116_43
                        mov              r9, rax
                                                                                        jmp   .Lx116_42
.Lx116_58:
                        cmp              eax, 13
                                                                                        jne   .Lx116_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_43
                        cmp              rax, r9
                                                                                        je    .Lx116_43
                        mov              r9, rax
                                                                                        jmp   .Lx116_42
.Lx116_43:
                        cmp              r8, r9
                                                                                        je    .Lx116_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_44
                        cmp              eax, 99
                                                                                        je    .Lx116_44
                        cmp              eax, 13
                                                                                        jne   .Lx116_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx116_44
                                                                                        jmp   .Lx116_45
.Lx116_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_53
                        cmp              eax, 99
                                                                                        je    .Lx116_53
                        cmp              eax, 13
                                                                                        jne   .Lx116_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx116_53
                                                                                        jmp   .Lx116_46
.Lx116_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx116_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx116_53
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
                                                                                        jmp   .Lx116_51
.Lx116_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_47
                        cmp              eax, 99
                                                                                        je    .Lx116_47
                        cmp              eax, 13
                                                                                        jne   .Lx116_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx116_47
                                                                                        jmp   .Lx116_48
.Lx116_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx116_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx116_53
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
                                                                                        jmp   .Lx116_51
.Lx116_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx116_49
                        cmp              edx, 14
                                                                                        je    .Lx116_53
                                                                                        jmp   .Lx116_52
.Lx116_49:
                        cmp              edx, 14
                                                                                        je    .Lx116_52
                        cmp              ecx, 7
                                                                                        je    .Lx116_53
                        cmp              edx, 7
                                                                                        je    .Lx116_53
                        cmp              ecx, 6
                                                                                        jne   .Lx116_50
                        cmp              edx, 6
                                                                                        jne   .Lx116_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx116_51
                                                                                        jmp   .Lx116_52
.Lx116_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx116_53
.Lx116_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx116_54
.Lx116_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx116_54
.Lx116_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx116_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n95_op11_α
                                                                                        jmp   n94_var_ref_α
n93_op11_β:
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n96_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
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
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   proc_$disj1$2F1_ω
n95_op11_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n97_op11_α
.Lx120_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 5
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n95_op11_α
                                                                                        jmp   n98_suspend_α
n97_op11_β:
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_suspend_α:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F1_γ
n98_suspend_β:
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj1$2F1_res]
                        push             rax
                        mov              rax, [rbp + 520]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj2$2F1_α
proc_$disj2$2F1_α:
                        .global          proc_$disj2$2F1_α
                        .global          proc_$disj2$2F1_β
                        .global          proc_$disj2$2F1_γ
                        .global          proc_$disj2$2F1_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 688
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj2$2F1_α_body:
                        lea              rax, [rip + n134_suspend_β]
                        mov              qword ptr [rbp + 688], rax
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx149_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx149_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx149_101
.Lx149_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx149_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   n125_var_ref_α
n124_op11_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n127_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx154_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx154_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx154_41
                        cmp              esi, 1
                                                                                        jne   .Lx154_55
                        mov              r8, rax
                                                                                        jmp   .Lx154_40
.Lx154_55:
                        cmp              esi, 2
                                                                                        jne   .Lx154_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx154_41
                        mov              r8, rax
                                                                                        jmp   .Lx154_40
.Lx154_56:
                        cmp              eax, 13
                                                                                        jne   .Lx154_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx154_41
                        cmp              rax, r8
                                                                                        je    .Lx154_41
                        mov              r8, rax
                                                                                        jmp   .Lx154_40
.Lx154_41:
                        lea              r9, [rbp + 640]
.Lx154_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx154_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx154_43
                        cmp              esi, 1
                                                                                        jne   .Lx154_57
                        mov              r9, rax
                                                                                        jmp   .Lx154_42
.Lx154_57:
                        cmp              esi, 2
                                                                                        jne   .Lx154_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx154_43
                        mov              r9, rax
                                                                                        jmp   .Lx154_42
.Lx154_58:
                        cmp              eax, 13
                                                                                        jne   .Lx154_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx154_43
                        cmp              rax, r9
                                                                                        je    .Lx154_43
                        mov              r9, rax
                                                                                        jmp   .Lx154_42
.Lx154_43:
                        cmp              r8, r9
                                                                                        je    .Lx154_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx154_44
                        cmp              eax, 99
                                                                                        je    .Lx154_44
                        cmp              eax, 13
                                                                                        jne   .Lx154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx154_44
                                                                                        jmp   .Lx154_45
.Lx154_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx154_53
                        cmp              eax, 99
                                                                                        je    .Lx154_53
                        cmp              eax, 13
                                                                                        jne   .Lx154_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx154_53
                                                                                        jmp   .Lx154_46
.Lx154_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx154_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx154_53
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
                                                                                        jmp   .Lx154_51
.Lx154_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx154_47
                        cmp              eax, 99
                                                                                        je    .Lx154_47
                        cmp              eax, 13
                                                                                        jne   .Lx154_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx154_47
                                                                                        jmp   .Lx154_48
.Lx154_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx154_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx154_53
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
                                                                                        jmp   .Lx154_51
.Lx154_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx154_49
                        cmp              edx, 14
                                                                                        je    .Lx154_53
                                                                                        jmp   .Lx154_52
.Lx154_49:
                        cmp              edx, 14
                                                                                        je    .Lx154_52
                        cmp              ecx, 7
                                                                                        je    .Lx154_53
                        cmp              edx, 7
                                                                                        je    .Lx154_53
                        cmp              ecx, 6
                                                                                        jne   .Lx154_50
                        cmp              edx, 6
                                                                                        jne   .Lx154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx154_51
                                                                                        jmp   .Lx154_52
.Lx154_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx154_53
.Lx154_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx154_54
.Lx154_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx154_54
.Lx154_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx154_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n128_var_ref_α
n127_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n130_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   n131_var_ref_α
n129_op11_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n132_op11_α
.Lx158_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        movabs           rsi, 6
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n134_suspend_α
n132_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_suspend_α:
                        lea              rax, [rip + n134_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F1_γ
n134_suspend_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
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
.Lx166_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx166_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        cmp              esi, 1
                                                                                        jne   .Lx166_55
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_55:
                        cmp              esi, 2
                                                                                        jne   .Lx166_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_56:
                        cmp              eax, 13
                                                                                        jne   .Lx166_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        cmp              rax, r8
                                                                                        je    .Lx166_41
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_41:
                        lea              r9, [rbp + 432]
.Lx166_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx166_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_43
                        cmp              esi, 1
                                                                                        jne   .Lx166_57
                        mov              r9, rax
                                                                                        jmp   .Lx166_42
.Lx166_57:
                        cmp              esi, 2
                                                                                        jne   .Lx166_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx166_43
                        mov              r9, rax
                                                                                        jmp   .Lx166_42
.Lx166_58:
                        cmp              eax, 13
                                                                                        jne   .Lx166_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_43
                        cmp              rax, r9
                                                                                        je    .Lx166_43
                        mov              r9, rax
                                                                                        jmp   .Lx166_42
.Lx166_43:
                        cmp              r8, r9
                                                                                        je    .Lx166_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_44
                        cmp              eax, 99
                                                                                        je    .Lx166_44
                        cmp              eax, 13
                                                                                        jne   .Lx166_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx166_44
                                                                                        jmp   .Lx166_45
.Lx166_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_53
                        cmp              eax, 99
                                                                                        je    .Lx166_53
                        cmp              eax, 13
                                                                                        jne   .Lx166_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_46
.Lx166_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx166_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx166_53
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
                                                                                        jmp   .Lx166_51
.Lx166_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_47
                        cmp              eax, 99
                                                                                        je    .Lx166_47
                        cmp              eax, 13
                                                                                        jne   .Lx166_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx166_47
                                                                                        jmp   .Lx166_48
.Lx166_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx166_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx166_53
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
                                                                                        jmp   .Lx166_51
.Lx166_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx166_49
                        cmp              edx, 14
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_52
.Lx166_49:
                        cmp              edx, 14
                                                                                        je    .Lx166_52
                        cmp              ecx, 7
                                                                                        je    .Lx166_53
                        cmp              edx, 7
                                                                                        je    .Lx166_53
                        cmp              ecx, 6
                                                                                        jne   .Lx166_50
                        cmp              edx, 6
                                                                                        jne   .Lx166_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx166_51
                                                                                        jmp   .Lx166_52
.Lx166_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx166_53
.Lx166_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx166_54
.Lx166_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx166_54
.Lx166_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx166_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n137_op11_α
                                                                                        jmp   n136_var_ref_α
n135_op11_β:
                                                                                        jmp   n137_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   n139_var_ref_α
n137_op11_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n140_op11_α
.Lx170_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n141_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 7
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n137_op11_α
                                                                                        jmp   n142_suspend_α
n140_op11_β:
                                                                                        jmp   n137_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_suspend_α:
                        lea              rax, [rip + n142_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F1_γ
n142_suspend_β:
                                                                                        jmp   n137_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx178_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        cmp              esi, 1
                                                                                        jne   .Lx178_55
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_55:
                        cmp              esi, 2
                                                                                        jne   .Lx178_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_56:
                        cmp              eax, 13
                                                                                        jne   .Lx178_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        cmp              rax, r8
                                                                                        je    .Lx178_41
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_41:
                        lea              r9, [rbp + 224]
.Lx178_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        cmp              esi, 1
                                                                                        jne   .Lx178_57
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_57:
                        cmp              esi, 2
                                                                                        jne   .Lx178_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_58:
                        cmp              eax, 13
                                                                                        jne   .Lx178_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        cmp              rax, r9
                                                                                        je    .Lx178_43
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_43:
                        cmp              r8, r9
                                                                                        je    .Lx178_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_44
                        cmp              eax, 99
                                                                                        je    .Lx178_44
                        cmp              eax, 13
                                                                                        jne   .Lx178_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx178_44
                                                                                        jmp   .Lx178_45
.Lx178_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_53
                        cmp              eax, 99
                                                                                        je    .Lx178_53
                        cmp              eax, 13
                                                                                        jne   .Lx178_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_46
.Lx178_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx178_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx178_53
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
                                                                                        jmp   .Lx178_51
.Lx178_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_47
                        cmp              eax, 99
                                                                                        je    .Lx178_47
                        cmp              eax, 13
                                                                                        jne   .Lx178_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx178_47
                                                                                        jmp   .Lx178_48
.Lx178_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx178_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx178_53
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
                                                                                        jmp   .Lx178_51
.Lx178_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx178_49
                        cmp              edx, 14
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_52
.Lx178_49:
                        cmp              edx, 14
                                                                                        je    .Lx178_52
                        cmp              ecx, 7
                                                                                        je    .Lx178_53
                        cmp              edx, 7
                                                                                        je    .Lx178_53
                        cmp              ecx, 6
                                                                                        jne   .Lx178_50
                        cmp              edx, 6
                                                                                        jne   .Lx178_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx178_51
                                                                                        jmp   .Lx178_52
.Lx178_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx178_53
.Lx178_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx178_54
.Lx178_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx178_54
.Lx178_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx178_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n145_op11_α
                                                                                        jmp   n144_var_ref_α
n143_op11_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
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
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   proc_$disj2$2F1_ω
n145_op11_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n147_op11_α
.Lx182_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n145_op11_α
                                                                                        jmp   n148_suspend_α
n147_op11_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_suspend_α:
                        lea              rax, [rip + n148_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F1_γ
n148_suspend_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_β:
                                                                                        jmp   qword ptr [rbp + 688]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj2$2F1_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 688
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n196_suspend_β]
                        mov              qword ptr [rbp + 688], rax
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx211_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx211_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx211_101
.Lx211_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx211_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n187_var_ref_α
n186_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx216_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        cmp              esi, 1
                                                                                        jne   .Lx216_55
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_55:
                        cmp              esi, 2
                                                                                        jne   .Lx216_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_56:
                        cmp              eax, 13
                                                                                        jne   .Lx216_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        cmp              rax, r8
                                                                                        je    .Lx216_41
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_41:
                        lea              r9, [rbp + 640]
.Lx216_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        cmp              esi, 1
                                                                                        jne   .Lx216_57
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_57:
                        cmp              esi, 2
                                                                                        jne   .Lx216_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_58:
                        cmp              eax, 13
                                                                                        jne   .Lx216_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        cmp              rax, r9
                                                                                        je    .Lx216_43
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_43:
                        cmp              r8, r9
                                                                                        je    .Lx216_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_44
                        cmp              eax, 99
                                                                                        je    .Lx216_44
                        cmp              eax, 13
                                                                                        jne   .Lx216_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx216_44
                                                                                        jmp   .Lx216_45
.Lx216_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_53
                        cmp              eax, 99
                                                                                        je    .Lx216_53
                        cmp              eax, 13
                                                                                        jne   .Lx216_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_46
.Lx216_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx216_53
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
                                                                                        jmp   .Lx216_51
.Lx216_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_47
                        cmp              eax, 99
                                                                                        je    .Lx216_47
                        cmp              eax, 13
                                                                                        jne   .Lx216_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_47
                                                                                        jmp   .Lx216_48
.Lx216_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx216_53
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
                                                                                        jmp   .Lx216_51
.Lx216_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx216_49
                        cmp              edx, 14
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_52
.Lx216_49:
                        cmp              edx, 14
                                                                                        je    .Lx216_52
                        cmp              ecx, 7
                                                                                        je    .Lx216_53
                        cmp              edx, 7
                                                                                        je    .Lx216_53
                        cmp              ecx, 6
                                                                                        jne   .Lx216_50
                        cmp              edx, 6
                                                                                        jne   .Lx216_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx216_51
                                                                                        jmp   .Lx216_52
.Lx216_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx216_53
.Lx216_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx216_54
.Lx216_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx216_54
.Lx216_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx216_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n191_op11_α
                                                                                        jmp   n190_var_ref_α
n189_op11_β:
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n192_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n193_var_ref_α
n191_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n194_op11_α
.Lx220_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n191_op11_α
                                                                                        jmp   n196_suspend_α
n194_op11_β:
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_suspend_α:
                        lea              rax, [rip + n196_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n196_suspend_β:
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
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
.Lx228_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx228_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        cmp              esi, 1
                                                                                        jne   .Lx228_55
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_55:
                        cmp              esi, 2
                                                                                        jne   .Lx228_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_56:
                        cmp              eax, 13
                                                                                        jne   .Lx228_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        cmp              rax, r8
                                                                                        je    .Lx228_41
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_41:
                        lea              r9, [rbp + 432]
.Lx228_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx228_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        cmp              esi, 1
                                                                                        jne   .Lx228_57
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_57:
                        cmp              esi, 2
                                                                                        jne   .Lx228_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_58:
                        cmp              eax, 13
                                                                                        jne   .Lx228_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        cmp              rax, r9
                                                                                        je    .Lx228_43
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_43:
                        cmp              r8, r9
                                                                                        je    .Lx228_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_44
                        cmp              eax, 99
                                                                                        je    .Lx228_44
                        cmp              eax, 13
                                                                                        jne   .Lx228_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx228_44
                                                                                        jmp   .Lx228_45
.Lx228_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_53
                        cmp              eax, 99
                                                                                        je    .Lx228_53
                        cmp              eax, 13
                                                                                        jne   .Lx228_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_46
.Lx228_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx228_53
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
                                                                                        jmp   .Lx228_51
.Lx228_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_47
                        cmp              eax, 99
                                                                                        je    .Lx228_47
                        cmp              eax, 13
                                                                                        jne   .Lx228_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx228_47
                                                                                        jmp   .Lx228_48
.Lx228_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx228_53
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
                                                                                        jmp   .Lx228_51
.Lx228_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx228_49
                        cmp              edx, 14
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_52
.Lx228_49:
                        cmp              edx, 14
                                                                                        je    .Lx228_52
                        cmp              ecx, 7
                                                                                        je    .Lx228_53
                        cmp              edx, 7
                                                                                        je    .Lx228_53
                        cmp              ecx, 6
                                                                                        jne   .Lx228_50
                        cmp              edx, 6
                                                                                        jne   .Lx228_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx228_51
                                                                                        jmp   .Lx228_52
.Lx228_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx228_53
.Lx228_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx228_54
.Lx228_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx228_54
.Lx228_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx228_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n198_var_ref_α
n197_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n200_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n201_var_ref_α
n199_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n202_op11_α
.Lx232_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n203_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n204_suspend_α
n202_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n204_suspend_α:
                        lea              rax, [rip + n204_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n204_suspend_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx240_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx240_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_41
                        cmp              esi, 1
                                                                                        jne   .Lx240_55
                        mov              r8, rax
                                                                                        jmp   .Lx240_40
.Lx240_55:
                        cmp              esi, 2
                                                                                        jne   .Lx240_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx240_41
                        mov              r8, rax
                                                                                        jmp   .Lx240_40
.Lx240_56:
                        cmp              eax, 13
                                                                                        jne   .Lx240_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_41
                        cmp              rax, r8
                                                                                        je    .Lx240_41
                        mov              r8, rax
                                                                                        jmp   .Lx240_40
.Lx240_41:
                        lea              r9, [rbp + 224]
.Lx240_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx240_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_43
                        cmp              esi, 1
                                                                                        jne   .Lx240_57
                        mov              r9, rax
                                                                                        jmp   .Lx240_42
.Lx240_57:
                        cmp              esi, 2
                                                                                        jne   .Lx240_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx240_43
                        mov              r9, rax
                                                                                        jmp   .Lx240_42
.Lx240_58:
                        cmp              eax, 13
                                                                                        jne   .Lx240_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_43
                        cmp              rax, r9
                                                                                        je    .Lx240_43
                        mov              r9, rax
                                                                                        jmp   .Lx240_42
.Lx240_43:
                        cmp              r8, r9
                                                                                        je    .Lx240_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_44
                        cmp              eax, 99
                                                                                        je    .Lx240_44
                        cmp              eax, 13
                                                                                        jne   .Lx240_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx240_44
                                                                                        jmp   .Lx240_45
.Lx240_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_53
                        cmp              eax, 99
                                                                                        je    .Lx240_53
                        cmp              eax, 13
                                                                                        jne   .Lx240_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx240_53
                                                                                        jmp   .Lx240_46
.Lx240_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx240_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx240_53
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
                                                                                        jmp   .Lx240_51
.Lx240_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_47
                        cmp              eax, 99
                                                                                        je    .Lx240_47
                        cmp              eax, 13
                                                                                        jne   .Lx240_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx240_47
                                                                                        jmp   .Lx240_48
.Lx240_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx240_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx240_53
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
                                                                                        jmp   .Lx240_51
.Lx240_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx240_49
                        cmp              edx, 14
                                                                                        je    .Lx240_53
                                                                                        jmp   .Lx240_52
.Lx240_49:
                        cmp              edx, 14
                                                                                        je    .Lx240_52
                        cmp              ecx, 7
                                                                                        je    .Lx240_53
                        cmp              edx, 7
                                                                                        je    .Lx240_53
                        cmp              ecx, 6
                                                                                        jne   .Lx240_50
                        cmp              edx, 6
                                                                                        jne   .Lx240_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx240_51
                                                                                        jmp   .Lx240_52
.Lx240_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx240_53
.Lx240_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx240_54
.Lx240_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx240_54
.Lx240_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx240_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n207_op11_α
                                                                                        jmp   n206_var_ref_α
n205_op11_β:
                                                                                        jmp   n207_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n208_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n207_op11_α:
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
n207_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n209_op11_α
.Lx244_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n207_op11_α
                                                                                        jmp   n210_suspend_α
n209_op11_β:
                                                                                        jmp   n207_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n210_suspend_α:
                        lea              rax, [rip + n210_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n210_suspend_β:
                                                                                        jmp   n207_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 688]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$disj3/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$disj3$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 928
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$disj1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$disj1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$disj2/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_$disj2$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
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
                        sub              rsp, 2264
                        mov              rdi, rsp
                        mov              ecx, 2264
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2256], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx318_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx318_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx318_101
.Lx318_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx318_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n249_op11_α
n248_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        .section         .rodata
.Lrkfn320:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n250_var_ref_α
n249_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n252_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n251_op11_α:
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
n251_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_call_proc_staged_α:
                        mov              qword ptr [rbp + 2048], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx325_20
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx325_21
.Lx325_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx325_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx325_1
                        lea              rcx, [rip + .Lx325_3]
                        lea              rdx, [rip + .Lx325_4]
                                                                                        jmp   rax
.Lx325_3:
                        mov              qword ptr [rbp + 2056], rsp
                        mov              rax, qword ptr [rbp + 2048]
                        test             rax, rax
                                                                                        jne   .Lx325_5
                        mov              qword ptr [rbp + 2048], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx325_2
.Lx325_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx325_2
.Lx325_4:
                        mov              rax, qword ptr [rbp + 2048]
                        test             rax, rax
                                                                                        jne   .Lx325_6
                        mov              qword ptr [rbp + 2048], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx325_2
.Lx325_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx325_2
.Lx325_1:
                        call             rt_faildescr@PLT
.Lx325_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n254_op11_α
                                                                                        jmp   n253_var_α
n252_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2056]
                                                                                        jmp   qword ptr [rsp]
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n255_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn329:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n256_var_ref_α
n254_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn331:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n252_call_proc_staged_β
n255_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n257_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n257_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lx334_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx334_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx334_41
                        cmp              esi, 1
                                                                                        jne   .Lx334_55
                        mov              r8, rax
                                                                                        jmp   .Lx334_40
.Lx334_55:
                        cmp              esi, 2
                                                                                        jne   .Lx334_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx334_41
                        mov              r8, rax
                                                                                        jmp   .Lx334_40
.Lx334_56:
                        cmp              eax, 13
                                                                                        jne   .Lx334_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx334_41
                        cmp              rax, r8
                                                                                        je    .Lx334_41
                        mov              r8, rax
                                                                                        jmp   .Lx334_40
.Lx334_41:
                        lea              r9, [rbp + 1920]
.Lx334_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx334_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx334_43
                        cmp              esi, 1
                                                                                        jne   .Lx334_57
                        mov              r9, rax
                                                                                        jmp   .Lx334_42
.Lx334_57:
                        cmp              esi, 2
                                                                                        jne   .Lx334_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx334_43
                        mov              r9, rax
                                                                                        jmp   .Lx334_42
.Lx334_58:
                        cmp              eax, 13
                                                                                        jne   .Lx334_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx334_43
                        cmp              rax, r9
                                                                                        je    .Lx334_43
                        mov              r9, rax
                                                                                        jmp   .Lx334_42
.Lx334_43:
                        cmp              r8, r9
                                                                                        je    .Lx334_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx334_44
                        cmp              eax, 99
                                                                                        je    .Lx334_44
                        cmp              eax, 13
                                                                                        jne   .Lx334_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx334_44
                                                                                        jmp   .Lx334_45
.Lx334_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx334_53
                        cmp              eax, 99
                                                                                        je    .Lx334_53
                        cmp              eax, 13
                                                                                        jne   .Lx334_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx334_53
                                                                                        jmp   .Lx334_46
.Lx334_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx334_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx334_53
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
                                                                                        jmp   .Lx334_51
.Lx334_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx334_47
                        cmp              eax, 99
                                                                                        je    .Lx334_47
                        cmp              eax, 13
                                                                                        jne   .Lx334_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx334_47
                                                                                        jmp   .Lx334_48
.Lx334_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx334_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx334_53
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
                                                                                        jmp   .Lx334_51
.Lx334_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx334_49
                        cmp              edx, 14
                                                                                        je    .Lx334_53
                                                                                        jmp   .Lx334_52
.Lx334_49:
                        cmp              edx, 14
                                                                                        je    .Lx334_52
                        cmp              ecx, 7
                                                                                        je    .Lx334_53
                        cmp              edx, 7
                                                                                        je    .Lx334_53
                        cmp              ecx, 6
                                                                                        jne   .Lx334_50
                        cmp              edx, 6
                                                                                        jne   .Lx334_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx334_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx334_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx334_51
                                                                                        jmp   .Lx334_52
.Lx334_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx334_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx334_53
.Lx334_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx334_54
.Lx334_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx334_54
.Lx334_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx334_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n258_var_α
n257_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n259_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n259_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn338:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n260_lit_string_α
n259_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n261_op11_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn341:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n262_op11_α
n261_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n262_op11_α:
                        .section         .rodata
.Lrkfn343:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n264_lit_string_α
                                                                                        jmp   n263_var_ref_α
n262_op11_β:
                                                                                        jmp   n264_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n265_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n266_op11_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n265_call_proc_staged_α:
                        mov              qword ptr [rbp + 1664], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx348_21
.Lx348_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx348_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        mov              qword ptr [rbp + 1672], rsp
                        mov              rax, qword ptr [rbp + 1664]
                        test             rax, rax
                                                                                        jne   .Lx348_5
                        mov              qword ptr [rbp + 1664], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        mov              rax, qword ptr [rbp + 1664]
                        test             rax, rax
                                                                                        jne   .Lx348_6
                        mov              qword ptr [rbp + 1664], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n268_op11_α
                                                                                        jmp   n267_var_α
n265_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1672]
                                                                                        jmp   qword ptr [rsp]
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "$disj1/1"
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn350:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n269_lit_string_α
n266_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n270_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n268_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn354:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n264_lit_string_α
                                                                                        jmp   n271_var_ref_α
n268_op11_β:
                                                                                        jmp   n264_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n272_op11_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn357:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n264_lit_string_α
                                                                                        jmp   n265_call_proc_staged_β
n270_op11_β:
                                                                                        jmp   n264_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n273_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn361:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn361]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n274_op11_α
n272_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n273_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1520]
                        lea              r8, [rbp + 1520]
.Lx362_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx362_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_41
                        cmp              esi, 1
                                                                                        jne   .Lx362_55
                        mov              r8, rax
                                                                                        jmp   .Lx362_40
.Lx362_55:
                        cmp              esi, 2
                                                                                        jne   .Lx362_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx362_41
                        mov              r8, rax
                                                                                        jmp   .Lx362_40
.Lx362_56:
                        cmp              eax, 13
                                                                                        jne   .Lx362_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_41
                        cmp              rax, r8
                                                                                        je    .Lx362_41
                        mov              r8, rax
                                                                                        jmp   .Lx362_40
.Lx362_41:
                        lea              r9, [rbp + 1536]
.Lx362_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx362_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_43
                        cmp              esi, 1
                                                                                        jne   .Lx362_57
                        mov              r9, rax
                                                                                        jmp   .Lx362_42
.Lx362_57:
                        cmp              esi, 2
                                                                                        jne   .Lx362_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx362_43
                        mov              r9, rax
                                                                                        jmp   .Lx362_42
.Lx362_58:
                        cmp              eax, 13
                                                                                        jne   .Lx362_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_43
                        cmp              rax, r9
                                                                                        je    .Lx362_43
                        mov              r9, rax
                                                                                        jmp   .Lx362_42
.Lx362_43:
                        cmp              r8, r9
                                                                                        je    .Lx362_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx362_44
                        cmp              eax, 99
                                                                                        je    .Lx362_44
                        cmp              eax, 13
                                                                                        jne   .Lx362_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx362_44
                                                                                        jmp   .Lx362_45
.Lx362_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx362_53
                        cmp              eax, 99
                                                                                        je    .Lx362_53
                        cmp              eax, 13
                                                                                        jne   .Lx362_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx362_53
                                                                                        jmp   .Lx362_46
.Lx362_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx362_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx362_53
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
                                                                                        jmp   .Lx362_51
.Lx362_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx362_47
                        cmp              eax, 99
                                                                                        je    .Lx362_47
                        cmp              eax, 13
                                                                                        jne   .Lx362_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx362_47
                                                                                        jmp   .Lx362_48
.Lx362_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx362_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx362_53
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
                                                                                        jmp   .Lx362_51
.Lx362_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx362_49
                        cmp              edx, 14
                                                                                        je    .Lx362_53
                                                                                        jmp   .Lx362_52
.Lx362_49:
                        cmp              edx, 14
                                                                                        je    .Lx362_52
                        cmp              ecx, 7
                                                                                        je    .Lx362_53
                        cmp              edx, 7
                                                                                        je    .Lx362_53
                        cmp              ecx, 6
                                                                                        jne   .Lx362_50
                        cmp              edx, 6
                                                                                        jne   .Lx362_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx362_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx362_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx362_51
                                                                                        jmp   .Lx362_52
.Lx362_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx362_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx362_53
.Lx362_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx362_54
.Lx362_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx362_54
.Lx362_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx362_54:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n264_lit_string_α
                                                                                        jmp   n275_var_α
n273_op11_β:
                                                                                        jmp   n264_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_op11_α:
                        .section         .rodata
.Lrkfn364:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n276_var_ref_α
n274_op11_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n279_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n280_op11_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n278_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn371:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n269_lit_string_α
n278_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx373_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx373_21
.Lx373_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx373_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx373_1
                        lea              rcx, [rip + .Lx373_3]
                        lea              rdx, [rip + .Lx373_4]
                                                                                        jmp   rax
.Lx373_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx373_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx373_2
.Lx373_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx373_2
.Lx373_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx373_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx373_2
.Lx373_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx373_2
.Lx373_1:
                        call             rt_faildescr@PLT
.Lx373_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n281_var_α
n279_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "$disj2/1"
#-----------------------------------------------------------------------------------------------------------------------
n280_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn375:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n283_lit_string_α
n280_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n284_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n282_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn379:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n285_var_ref_α
n282_op11_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n286_op11_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn382:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n279_call_proc_staged_β
n284_op11_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n287_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn386:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n288_op11_α
n286_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx387_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        cmp              esi, 1
                                                                                        jne   .Lx387_55
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_55:
                        cmp              esi, 2
                                                                                        jne   .Lx387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_56:
                        cmp              eax, 13
                                                                                        jne   .Lx387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        cmp              rax, r8
                                                                                        je    .Lx387_41
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_41:
                        lea              r9, [rbp + 1104]
.Lx387_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        cmp              esi, 1
                                                                                        jne   .Lx387_57
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_57:
                        cmp              esi, 2
                                                                                        jne   .Lx387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_58:
                        cmp              eax, 13
                                                                                        jne   .Lx387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        cmp              rax, r9
                                                                                        je    .Lx387_43
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_43:
                        cmp              r8, r9
                                                                                        je    .Lx387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_44
                        cmp              eax, 99
                                                                                        je    .Lx387_44
                        cmp              eax, 13
                                                                                        jne   .Lx387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx387_44
                                                                                        jmp   .Lx387_45
.Lx387_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_53
                        cmp              eax, 99
                                                                                        je    .Lx387_53
                        cmp              eax, 13
                                                                                        jne   .Lx387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx387_53
                                                                                        jmp   .Lx387_46
.Lx387_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx387_53
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
                                                                                        jmp   .Lx387_51
.Lx387_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_47
                        cmp              eax, 99
                                                                                        je    .Lx387_47
                        cmp              eax, 13
                                                                                        jne   .Lx387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx387_47
                                                                                        jmp   .Lx387_48
.Lx387_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx387_53
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
                                                                                        jmp   .Lx387_51
.Lx387_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx387_49
                        cmp              edx, 14
                                                                                        je    .Lx387_53
                                                                                        jmp   .Lx387_52
.Lx387_49:
                        cmp              edx, 14
                                                                                        je    .Lx387_52
                        cmp              ecx, 7
                                                                                        je    .Lx387_53
                        cmp              edx, 7
                                                                                        je    .Lx387_53
                        cmp              ecx, 6
                                                                                        jne   .Lx387_50
                        cmp              edx, 6
                                                                                        jne   .Lx387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx387_51
                                                                                        jmp   .Lx387_52
.Lx387_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx387_53
.Lx387_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx387_54
.Lx387_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx387_54
.Lx387_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx387_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n289_var_ref_α
n287_op11_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
                        .section         .rodata
.Lrkfn389:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn389]
                        lea              rsi, [rbp + 416]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n290_var_ref_α
n288_op11_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n292_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n293_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n294_op11_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n295_op11_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n293_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx397_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx397_21
.Lx397_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx397_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx397_1
                        lea              rcx, [rip + .Lx397_3]
                        lea              rdx, [rip + .Lx397_4]
                                                                                        jmp   rax
.Lx397_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx397_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx397_2
.Lx397_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx397_2
.Lx397_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx397_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx397_2
.Lx397_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx397_2
.Lx397_1:
                        call             rt_faildescr@PLT
.Lx397_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n297_op11_α
                                                                                        jmp   n296_var_α
n293_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "$disj3/1"
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn399:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n298_lit_string_α
n294_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n295_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn401:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn401]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n299_var_ref_α
n295_op11_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n300_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn405:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n301_var_ref_α
n297_op11_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n302_op11_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn410:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n293_call_proc_staged_β
n300_op11_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n304_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n302_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn414:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n305_move_label_α
n302_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n306_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n304_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx417_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              esi, 1
                                                                                        jne   .Lx417_55
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_55:
                        cmp              esi, 2
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_56:
                        cmp              eax, 13
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              rax, r8
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_41:
                        lea              r9, [rbp + 512]
.Lx417_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              esi, 1
                                                                                        jne   .Lx417_57
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_57:
                        cmp              esi, 2
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_58:
                        cmp              eax, 13
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              rax, r9
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_43:
                        cmp              r8, r9
                                                                                        je    .Lx417_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_44
                        cmp              eax, 99
                                                                                        je    .Lx417_44
                        cmp              eax, 13
                                                                                        jne   .Lx417_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx417_44
                                                                                        jmp   .Lx417_45
.Lx417_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_53
                        cmp              eax, 99
                                                                                        je    .Lx417_53
                        cmp              eax, 13
                                                                                        jne   .Lx417_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_46
.Lx417_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_47
                        cmp              eax, 99
                                                                                        je    .Lx417_47
                        cmp              eax, 13
                                                                                        jne   .Lx417_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_47
                                                                                        jmp   .Lx417_48
.Lx417_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx417_49
                        cmp              edx, 14
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_52
.Lx417_49:
                        cmp              edx, 14
                                                                                        je    .Lx417_52
                        cmp              ecx, 7
                                                                                        je    .Lx417_53
                        cmp              edx, 7
                                                                                        je    .Lx417_53
                        cmp              ecx, 6
                                                                                        jne   .Lx417_50
                        cmp              edx, 6
                                                                                        jne   .Lx417_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx417_51
                                                                                        jmp   .Lx417_52
.Lx417_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
.Lx417_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx417_54
.Lx417_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx417_54
.Lx417_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx417_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n307_var_ref_α
n304_op11_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_move_label_α:
                        lea              rax, [rip + n251_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n306_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx420_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx420_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_41
                        cmp              esi, 1
                                                                                        jne   .Lx420_55
                        mov              r8, rax
                                                                                        jmp   .Lx420_40
.Lx420_55:
                        cmp              esi, 2
                                                                                        jne   .Lx420_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx420_41
                        mov              r8, rax
                                                                                        jmp   .Lx420_40
.Lx420_56:
                        cmp              eax, 13
                                                                                        jne   .Lx420_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_41
                        cmp              rax, r8
                                                                                        je    .Lx420_41
                        mov              r8, rax
                                                                                        jmp   .Lx420_40
.Lx420_41:
                        lea              r9, [rbp + 864]
.Lx420_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx420_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_43
                        cmp              esi, 1
                                                                                        jne   .Lx420_57
                        mov              r9, rax
                                                                                        jmp   .Lx420_42
.Lx420_57:
                        cmp              esi, 2
                                                                                        jne   .Lx420_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx420_43
                        mov              r9, rax
                                                                                        jmp   .Lx420_42
.Lx420_58:
                        cmp              eax, 13
                                                                                        jne   .Lx420_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_43
                        cmp              rax, r9
                                                                                        je    .Lx420_43
                        mov              r9, rax
                                                                                        jmp   .Lx420_42
.Lx420_43:
                        cmp              r8, r9
                                                                                        je    .Lx420_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx420_44
                        cmp              eax, 99
                                                                                        je    .Lx420_44
                        cmp              eax, 13
                                                                                        jne   .Lx420_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx420_44
                                                                                        jmp   .Lx420_45
.Lx420_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx420_53
                        cmp              eax, 99
                                                                                        je    .Lx420_53
                        cmp              eax, 13
                                                                                        jne   .Lx420_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx420_53
                                                                                        jmp   .Lx420_46
.Lx420_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx420_53
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
                                                                                        jmp   .Lx420_51
.Lx420_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx420_47
                        cmp              eax, 99
                                                                                        je    .Lx420_47
                        cmp              eax, 13
                                                                                        jne   .Lx420_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx420_47
                                                                                        jmp   .Lx420_48
.Lx420_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx420_53
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
                                                                                        jmp   .Lx420_51
.Lx420_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx420_49
                        cmp              edx, 14
                                                                                        je    .Lx420_53
                                                                                        jmp   .Lx420_52
.Lx420_49:
                        cmp              edx, 14
                                                                                        je    .Lx420_52
                        cmp              ecx, 7
                                                                                        je    .Lx420_53
                        cmp              edx, 7
                                                                                        je    .Lx420_53
                        cmp              ecx, 6
                                                                                        jne   .Lx420_50
                        cmp              edx, 6
                                                                                        jne   .Lx420_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx420_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx420_51
                                                                                        jmp   .Lx420_52
.Lx420_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx420_53
.Lx420_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx420_54
.Lx420_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx420_54
.Lx420_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx420_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n309_var_α
n306_op11_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n308_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n311_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n312_op11_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n311_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn429:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n283_lit_string_α
n311_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn431:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n313_var_ref_α
n312_op11_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n315_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn437:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn437]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n316_var_α
n315_op11_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n317_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn441:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n298_lit_string_α
n317_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n308_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2256]
                        add              rsp, 2264
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2256]
                        add              rsp, 2264
                        ret
                        .section         .note.GNU-stack,"",@progbits
