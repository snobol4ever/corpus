                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj3$2F1_α
proc_$disj3$2F1_α:
proc_$disj3$2F1_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 896], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        mov              eax, 3
                                                                                        jmp   .Lx33_101
.Lx33_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx33_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx33_240
                        add              rsp, 112
                                                                                        jmp   proc_$disj3$2F1_ω
.Lx33_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 112
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
                                                                                        jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx38_44
                        cmp              eax, 72
                                                                                        jne   .Lx38_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx38_44
                                                                                        jmp   .Lx38_45
.Lx38_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_53
                        cmp              eax, 104
                                                                                        je    .Lx38_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx38_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx38_49
                        cmp              edx, 80
                                                                                        je    .Lx38_53
                                                                                        jmp   .Lx38_52
.Lx38_49:
                        cmp              edx, 80
                                                                                        je    .Lx38_52
                        cmp              ecx, 5
                                                                                        je    .Lx38_53
                        cmp              edx, 5
                                                                                        je    .Lx38_53
                        cmp              ecx, 3
                                                                                        jne   .Lx38_50
                        cmp              edx, 3
                                                                                        jne   .Lx38_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx38_54
.Lx38_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx38_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n8_call_builtin_prolog_α
                                                                                        jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n6_call_builtin_prolog_α
.Lx41_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]                               # args
                        movabs           rsi, 3                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n8_call_builtin_prolog_α
                                                                                        jmp   n7_suspend_α
n6_call_builtin_prolog_β:
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_$disj3$2F1_γ
n7_suspend_β:
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx50_44
                        cmp              eax, 72
                                                                                        jne   .Lx50_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx50_44
                                                                                        jmp   .Lx50_45
.Lx50_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_53
                        cmp              eax, 104
                                                                                        je    .Lx50_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx50_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx50_49
                        cmp              edx, 80
                                                                                        je    .Lx50_53
                                                                                        jmp   .Lx50_52
.Lx50_49:
                        cmp              edx, 80
                                                                                        je    .Lx50_52
                        cmp              ecx, 5
                                                                                        je    .Lx50_53
                        cmp              edx, 5
                                                                                        je    .Lx50_53
                        cmp              ecx, 3
                                                                                        jne   .Lx50_50
                        cmp              edx, 3
                                                                                        jne   .Lx50_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx50_54
.Lx50_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx50_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n14_call_builtin_prolog_α
.Lx53_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]                               # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n15_suspend_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx62_44
                        cmp              eax, 72
                                                                                        jne   .Lx62_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx62_44
                                                                                        jmp   .Lx62_45
.Lx62_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_53
                        cmp              eax, 104
                                                                                        je    .Lx62_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx62_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx62_49
                        cmp              edx, 80
                                                                                        je    .Lx62_53
                                                                                        jmp   .Lx62_52
.Lx62_49:
                        cmp              edx, 80
                                                                                        je    .Lx62_52
                        cmp              ecx, 5
                                                                                        je    .Lx62_53
                        cmp              edx, 5
                                                                                        je    .Lx62_53
                        cmp              ecx, 3
                                                                                        jne   .Lx62_50
                        cmp              edx, 3
                                                                                        jne   .Lx62_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx62_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx62_54
.Lx62_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx62_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n24_call_builtin_prolog_α
                                                                                        jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx65_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]                               # args
                        movabs           rsi, 2                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n24_call_builtin_prolog_α
                                                                                        jmp   n23_suspend_α
n22_call_builtin_prolog_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n23_suspend_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx74_44
                        cmp              eax, 72
                                                                                        jne   .Lx74_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx74_44
                                                                                        jmp   .Lx74_45
.Lx74_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_53
                        cmp              eax, 104
                                                                                        je    .Lx74_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx74_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx74_49
                        cmp              edx, 80
                                                                                        je    .Lx74_53
                                                                                        jmp   .Lx74_52
.Lx74_49:
                        cmp              edx, 80
                                                                                        je    .Lx74_52
                        cmp              ecx, 5
                                                                                        je    .Lx74_53
                        cmp              edx, 5
                                                                                        je    .Lx74_53
                        cmp              ecx, 3
                                                                                        jne   .Lx74_50
                        cmp              edx, 3
                                                                                        jne   .Lx74_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx74_54
.Lx74_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx74_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n32_call_builtin_prolog_α
                                                                                        jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n30_call_builtin_prolog_α
.Lx77_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]                               # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n32_call_builtin_prolog_α
                                                                                        jmp   n31_suspend_α
n30_call_builtin_prolog_β:
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj3$2F1_γ
n31_suspend_β:
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj3$2F1_ω
                                                                                        jmp   proc_$disj3$2F1_ω
n32_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj3$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_β:
                                                                                        jmp   qword ptr [rbp + 896]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj3$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F1_α
proc_$disj1$2F1_α:
proc_$disj1$2F1_α_body:
                        lea              rax, [rip + n89_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        mov              eax, 3
                                                                                        jmp   .Lx99_101
.Lx99_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx99_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx99_240
                        add              rsp, 112
                                                                                        jmp   proc_$disj1$2F1_ω
.Lx99_240:
                                                                                        jmp   n83_var_ref_α
n82_call_builtin_prolog_β:
                        add              rsp, 112
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
                                                                                        jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx104_44
                        cmp              eax, 72
                                                                                        jne   .Lx104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx104_44
                                                                                        jmp   .Lx104_45
.Lx104_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_53
                        cmp              eax, 104
                                                                                        je    .Lx104_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx104_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx104_49
                        cmp              edx, 80
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_52
.Lx104_49:
                        cmp              edx, 80
                                                                                        je    .Lx104_52
                        cmp              ecx, 5
                                                                                        je    .Lx104_53
                        cmp              edx, 5
                                                                                        je    .Lx104_53
                        cmp              ecx, 3
                                                                                        jne   .Lx104_50
                        cmp              edx, 3
                                                                                        jne   .Lx104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx104_54
.Lx104_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx104_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n90_call_builtin_prolog_α
                                                                                        jmp   n86_var_ref_α
n85_call_builtin_prolog_β:
                                                                                        jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n88_call_builtin_prolog_α
.Lx107_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]                               # args
                        movabs           rsi, 4                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n90_call_builtin_prolog_α
                                                                                        jmp   n89_suspend_α
n88_call_builtin_prolog_β:
                                                                                        jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_suspend_α:
                        lea              rax, [rip + n89_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_$disj1$2F1_γ
n89_suspend_β:
                                                                                        jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   n91_var_ref_α
n90_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx116_44
                        cmp              eax, 72
                                                                                        jne   .Lx116_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx116_44
                                                                                        jmp   .Lx116_45
.Lx116_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_53
                        cmp              eax, 104
                                                                                        je    .Lx116_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx116_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx116_49
                        cmp              edx, 80
                                                                                        je    .Lx116_53
                                                                                        jmp   .Lx116_52
.Lx116_49:
                        cmp              edx, 80
                                                                                        je    .Lx116_52
                        cmp              ecx, 5
                                                                                        je    .Lx116_53
                        cmp              edx, 5
                                                                                        je    .Lx116_53
                        cmp              ecx, 3
                                                                                        jne   .Lx116_50
                        cmp              edx, 3
                                                                                        jne   .Lx116_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx116_54
.Lx116_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx116_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n98_call_builtin_prolog_α
                                                                                        jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                                        jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n96_call_builtin_prolog_α
.Lx119_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]                               # args
                        movabs           rsi, 5                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n98_call_builtin_prolog_α
                                                                                        jmp   n97_suspend_α
n96_call_builtin_prolog_β:
                                                                                        jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_suspend_α:
                        lea              rax, [rip + n97_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F1_γ
n97_suspend_β:
                                                                                        jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   proc_$disj1$2F1_ω
n98_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj2$2F1_α
proc_$disj2$2F1_α:
proc_$disj2$2F1_α_body:
                        lea              rax, [rip + n131_suspend_β]
                        mov              qword ptr [rbp + 688], rax
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        mov              eax, 3
                                                                                        jmp   .Lx149_101
.Lx149_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx149_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx149_240
                        add              rsp, 112
                                                                                        jmp   proc_$disj2$2F1_ω
.Lx149_240:
                                                                                        jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        add              rsp, 112
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
                                                                                        jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx154_44
                        cmp              eax, 72
                                                                                        jne   .Lx154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx154_44
                                                                                        jmp   .Lx154_45
.Lx154_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx154_53
                        cmp              eax, 104
                                                                                        je    .Lx154_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx154_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx154_49
                        cmp              edx, 80
                                                                                        je    .Lx154_53
                                                                                        jmp   .Lx154_52
.Lx154_49:
                        cmp              edx, 80
                                                                                        je    .Lx154_52
                        cmp              ecx, 5
                                                                                        je    .Lx154_53
                        cmp              edx, 5
                                                                                        je    .Lx154_53
                        cmp              ecx, 3
                                                                                        jne   .Lx154_50
                        cmp              edx, 3
                                                                                        jne   .Lx154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx154_54
.Lx154_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx154_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n132_call_builtin_prolog_α
                                                                                        jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                                                                                        jmp   n132_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n130_call_builtin_prolog_α
.Lx157_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]                               # args
                        movabs           rsi, 6                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n132_call_builtin_prolog_α
                                                                                        jmp   n131_suspend_α
n130_call_builtin_prolog_β:
                                                                                        jmp   n132_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_suspend_α:
                        lea              rax, [rip + n131_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_$disj2$2F1_γ
n131_suspend_β:
                                                                                        jmp   n132_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   n133_var_ref_α
n132_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx166_44
                        cmp              eax, 72
                                                                                        jne   .Lx166_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx166_44
                                                                                        jmp   .Lx166_45
.Lx166_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_53
                        cmp              eax, 104
                                                                                        je    .Lx166_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx166_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx166_49
                        cmp              edx, 80
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_52
.Lx166_49:
                        cmp              edx, 80
                                                                                        je    .Lx166_52
                        cmp              ecx, 5
                                                                                        je    .Lx166_53
                        cmp              edx, 5
                                                                                        je    .Lx166_53
                        cmp              ecx, 3
                                                                                        jne   .Lx166_50
                        cmp              edx, 3
                                                                                        jne   .Lx166_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx166_54
.Lx166_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx166_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n140_call_builtin_prolog_α
                                                                                        jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                                                                                        jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n138_call_builtin_prolog_α
.Lx169_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]                               # args
                        movabs           rsi, 7                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n140_call_builtin_prolog_α
                                                                                        jmp   n139_suspend_α
n138_call_builtin_prolog_β:
                                                                                        jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_suspend_α:
                        lea              rax, [rip + n139_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F1_γ
n139_suspend_β:
                                                                                        jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   n141_var_ref_α
n140_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx178_44
                        cmp              eax, 72
                                                                                        jne   .Lx178_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx178_44
                                                                                        jmp   .Lx178_45
.Lx178_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_53
                        cmp              eax, 104
                                                                                        je    .Lx178_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx178_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx178_49
                        cmp              edx, 80
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_52
.Lx178_49:
                        cmp              edx, 80
                                                                                        je    .Lx178_52
                        cmp              ecx, 5
                                                                                        je    .Lx178_53
                        cmp              edx, 5
                                                                                        je    .Lx178_53
                        cmp              ecx, 3
                                                                                        jne   .Lx178_50
                        cmp              edx, 3
                                                                                        jne   .Lx178_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx178_54
.Lx178_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx178_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n148_call_builtin_prolog_α
                                                                                        jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n146_call_builtin_prolog_α
.Lx181_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]                               # args
                        movabs           rsi, 8                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n148_call_builtin_prolog_α
                                                                                        jmp   n147_suspend_α
n146_call_builtin_prolog_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_suspend_α:
                        lea              rax, [rip + n147_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F1_γ
n147_suspend_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj2$2F1_ω
                                                                                        jmp   proc_$disj2$2F1_ω
n148_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj2$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_β:
                                                                                        jmp   qword ptr [rbp + 688]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n193_suspend_β]
                        mov              qword ptr [rbp + 688], rax
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        mov              eax, 3
                                                                                        jmp   .Lx211_101
.Lx211_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx211_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx211_240
                        add              rsp, 112
                                                                                        jmp   proc_$disj0$2F1_ω
.Lx211_240:
                                                                                        jmp   n187_var_ref_α
n186_call_builtin_prolog_β:
                        add              rsp, 112
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
                                                                                        jmp   n189_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx216_44
                        cmp              eax, 72
                                                                                        jne   .Lx216_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx216_44
                                                                                        jmp   .Lx216_45
.Lx216_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_53
                        cmp              eax, 104
                                                                                        je    .Lx216_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx216_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx216_49
                        cmp              edx, 80
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_52
.Lx216_49:
                        cmp              edx, 80
                                                                                        je    .Lx216_52
                        cmp              ecx, 5
                                                                                        je    .Lx216_53
                        cmp              edx, 5
                                                                                        je    .Lx216_53
                        cmp              ecx, 3
                                                                                        jne   .Lx216_50
                        cmp              edx, 3
                                                                                        jne   .Lx216_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx216_54
.Lx216_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx216_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n194_call_builtin_prolog_α
                                                                                        jmp   n190_var_ref_α
n189_call_builtin_prolog_β:
                                                                                        jmp   n194_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n192_call_builtin_prolog_α
.Lx219_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]                               # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n194_call_builtin_prolog_α
                                                                                        jmp   n193_suspend_α
n192_call_builtin_prolog_β:
                                                                                        jmp   n194_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_suspend_α:
                        lea              rax, [rip + n193_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_$disj0$2F1_γ
n193_suspend_β:
                                                                                        jmp   n194_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n195_var_ref_α
n194_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n197_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx228_44
                        cmp              eax, 72
                                                                                        jne   .Lx228_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx228_44
                                                                                        jmp   .Lx228_45
.Lx228_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_53
                        cmp              eax, 104
                                                                                        je    .Lx228_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx228_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx228_49
                        cmp              edx, 80
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_52
.Lx228_49:
                        cmp              edx, 80
                                                                                        je    .Lx228_52
                        cmp              ecx, 5
                                                                                        je    .Lx228_53
                        cmp              edx, 5
                                                                                        je    .Lx228_53
                        cmp              ecx, 3
                                                                                        jne   .Lx228_50
                        cmp              edx, 3
                                                                                        jne   .Lx228_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx228_54
.Lx228_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx228_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n202_call_builtin_prolog_α
                                                                                        jmp   n198_var_ref_α
n197_call_builtin_prolog_β:
                                                                                        jmp   n202_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n199_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n200_call_builtin_prolog_α
.Lx231_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]                               # args
                        movabs           rsi, 2                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n202_call_builtin_prolog_α
                                                                                        jmp   n201_suspend_α
n200_call_builtin_prolog_β:
                                                                                        jmp   n202_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n201_suspend_α:
                        lea              rax, [rip + n201_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n201_suspend_β:
                                                                                        jmp   n202_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n203_var_ref_α
n202_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n204_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx240_44
                        cmp              eax, 72
                                                                                        jne   .Lx240_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx240_44
                                                                                        jmp   .Lx240_45
.Lx240_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_53
                        cmp              eax, 104
                                                                                        je    .Lx240_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx240_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx240_49
                        cmp              edx, 80
                                                                                        je    .Lx240_53
                                                                                        jmp   .Lx240_52
.Lx240_49:
                        cmp              edx, 80
                                                                                        je    .Lx240_52
                        cmp              ecx, 5
                                                                                        je    .Lx240_53
                        cmp              edx, 5
                                                                                        je    .Lx240_53
                        cmp              ecx, 3
                                                                                        jne   .Lx240_50
                        cmp              edx, 3
                                                                                        jne   .Lx240_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx240_54
.Lx240_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx240_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n210_call_builtin_prolog_α
                                                                                        jmp   n206_var_ref_α
n205_call_builtin_prolog_β:
                                                                                        jmp   n210_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n207_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n208_call_builtin_prolog_α
.Lx243_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]                               # args
                        movabs           rsi, 3                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n210_call_builtin_prolog_α
                                                                                        jmp   n209_suspend_α
n208_call_builtin_prolog_β:
                                                                                        jmp   n210_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_suspend_α:
                        lea              rax, [rip + n209_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n209_suspend_β:
                                                                                        jmp   n210_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   proc_$disj0$2F1_ω
n210_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 688]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        sub              rsp, 96
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
                        mov              eax, 3
                                                                                        jmp   .Lx318_101
.Lx318_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx318_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx318_240
                        add              rsp, 96
                                                                                        jmp   main_ω
.Lx318_240:
                                                                                        jmp   n249_call_builtin_prolog_α
n248_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn320:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]                         # fn
                        lea              rsi, [rbp + 1824]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx319_240
                        add              rsp, 96
                                                                                        jmp   n317_call_builtin_prolog_α
.Lx319_240:
                                                                                        jmp   n250_var_ref_α
n249_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n251_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        mov              qword ptr [rbp + 2048], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx324_20
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx324_21
.Lx324_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2080]                    # v
                        mov              rdx, qword ptr [rbp + 2088]                    # v
                        call             rt_arg_stage@PLT
.Lx324_21:
                        mov              edi, 3                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx324_1
                        lea              rcx, [rip + .Lx324_3]
                        lea              rdx, [rip + .Lx324_4]
                                                                                        jmp   rax
.Lx324_3:
                        mov              qword ptr [rbp + 2056], rsp
                        mov              rax, qword ptr [rbp + 2048]
                        test             rax, rax
                                                                                        jne   .Lx324_5
                        mov              qword ptr [rbp + 2048], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx324_2
.Lx324_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx324_2
.Lx324_4:
                        mov              rax, qword ptr [rbp + 2048]
                        test             rax, rax
                                                                                        jne   .Lx324_6
                        mov              qword ptr [rbp + 2048], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx324_2
.Lx324_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx324_2
.Lx324_1:
                        call             rt_faildescr@PLT
.Lx324_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx324_240
                        add              rsp, 96
                                                                                        jmp   n254_call_builtin_prolog_α
.Lx324_240:
                                                                                        jmp   n252_var_α
n251_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2056]
                                                                                        jmp   qword ptr [rsp]
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn328:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]                         # fn
                        lea              rsi, [rbp + 1968]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx327_240
                        add              rsp, 96
                                                                                        jmp   n317_call_builtin_prolog_α
.Lx327_240:
                                                                                        jmp   n251_call_proc_staged_β
n253_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn330:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]                         # fn
                        lea              rsi, [rbp + 1856]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n255_var_ref_α
n254_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
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
.Lx333_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx333_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_41
                        cmp              esi, 1
                                                                                        jne   .Lx333_55
                        mov              r8, rax
                                                                                        jmp   .Lx333_40
.Lx333_55:
                        cmp              esi, 2
                                                                                        jne   .Lx333_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx333_41
                        mov              r8, rax
                                                                                        jmp   .Lx333_40
.Lx333_56:
                        cmp              eax, 72
                                                                                        jne   .Lx333_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_41
                        cmp              rax, r8
                                                                                        je    .Lx333_41
                        mov              r8, rax
                                                                                        jmp   .Lx333_40
.Lx333_41:
                        lea              r9, [rbp + 1920]
.Lx333_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx333_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_43
                        cmp              esi, 1
                                                                                        jne   .Lx333_57
                        mov              r9, rax
                                                                                        jmp   .Lx333_42
.Lx333_57:
                        cmp              esi, 2
                                                                                        jne   .Lx333_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx333_43
                        mov              r9, rax
                                                                                        jmp   .Lx333_42
.Lx333_58:
                        cmp              eax, 72
                                                                                        jne   .Lx333_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_43
                        cmp              rax, r9
                                                                                        je    .Lx333_43
                        mov              r9, rax
                                                                                        jmp   .Lx333_42
.Lx333_43:
                        cmp              r8, r9
                                                                                        je    .Lx333_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx333_44
                        cmp              eax, 104
                                                                                        je    .Lx333_44
                        cmp              eax, 72
                                                                                        jne   .Lx333_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx333_44
                                                                                        jmp   .Lx333_45
.Lx333_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx333_53
                        cmp              eax, 104
                                                                                        je    .Lx333_53
                        cmp              eax, 72
                                                                                        jne   .Lx333_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx333_53
                                                                                        jmp   .Lx333_46
.Lx333_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx333_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx333_53
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
                                                                                        jmp   .Lx333_51
.Lx333_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx333_47
                        cmp              eax, 104
                                                                                        je    .Lx333_47
                        cmp              eax, 72
                                                                                        jne   .Lx333_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx333_47
                                                                                        jmp   .Lx333_48
.Lx333_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx333_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx333_53
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
                                                                                        jmp   .Lx333_51
.Lx333_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx333_49
                        cmp              edx, 80
                                                                                        je    .Lx333_53
                                                                                        jmp   .Lx333_52
.Lx333_49:
                        cmp              edx, 80
                                                                                        je    .Lx333_52
                        cmp              ecx, 5
                                                                                        je    .Lx333_53
                        cmp              edx, 5
                                                                                        je    .Lx333_53
                        cmp              ecx, 3
                                                                                        jne   .Lx333_50
                        cmp              edx, 3
                                                                                        jne   .Lx333_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx333_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx333_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx333_51
                                                                                        jmp   .Lx333_52
.Lx333_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx333_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx333_53
.Lx333_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx333_54
.Lx333_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx333_54
.Lx333_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx333_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n257_var_α
n256_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n258_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn337:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]                         # fn
                        lea              rsi, [rbp + 1776]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n259_lit_string_α
n258_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 1744], 2                      # result
                        mov              dword ptr [rbp + 1748], 0
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n260_call_builtin_prolog_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn340:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]                         # fn
                        lea              rsi, [rbp + 1728]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n261_call_builtin_prolog_α
n260_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn342:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]                         # fn
                        lea              rsi, [rbp + 1440]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n262_var_ref_α
n261_call_builtin_prolog_β:
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n263_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n263_call_proc_staged_α:
                        mov              qword ptr [rbp + 1664], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx346_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx346_21
.Lx346_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1696]                    # v
                        mov              rdx, qword ptr [rbp + 1704]                    # v
                        call             rt_arg_stage@PLT
.Lx346_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx346_1
                        lea              rcx, [rip + .Lx346_3]
                        lea              rdx, [rip + .Lx346_4]
                                                                                        jmp   rax
.Lx346_3:
                        mov              qword ptr [rbp + 1672], rsp
                        mov              rax, qword ptr [rbp + 1664]
                        test             rax, rax
                                                                                        jne   .Lx346_5
                        mov              qword ptr [rbp + 1664], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx346_2
.Lx346_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx346_2
.Lx346_4:
                        mov              rax, qword ptr [rbp + 1664]
                        test             rax, rax
                                                                                        jne   .Lx346_6
                        mov              qword ptr [rbp + 1664], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx346_2
.Lx346_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx346_2
.Lx346_1:
                        call             rt_faildescr@PLT
.Lx346_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n266_call_builtin_prolog_α
                                                                                        jmp   n264_var_α
n263_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1672]
                                                                                        jmp   qword ptr [rsp]
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "$disj1/1"
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn350:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]                         # fn
                        lea              rsi, [rbp + 1584]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n263_call_proc_staged_β
n265_call_builtin_prolog_β:
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn352:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]                         # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n267_var_ref_α
n266_call_builtin_prolog_β:
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
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
.Lx355_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx355_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_41
                        cmp              esi, 1
                                                                                        jne   .Lx355_55
                        mov              r8, rax
                                                                                        jmp   .Lx355_40
.Lx355_55:
                        cmp              esi, 2
                                                                                        jne   .Lx355_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx355_41
                        mov              r8, rax
                                                                                        jmp   .Lx355_40
.Lx355_56:
                        cmp              eax, 72
                                                                                        jne   .Lx355_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_41
                        cmp              rax, r8
                                                                                        je    .Lx355_41
                        mov              r8, rax
                                                                                        jmp   .Lx355_40
.Lx355_41:
                        lea              r9, [rbp + 1536]
.Lx355_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx355_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_43
                        cmp              esi, 1
                                                                                        jne   .Lx355_57
                        mov              r9, rax
                                                                                        jmp   .Lx355_42
.Lx355_57:
                        cmp              esi, 2
                                                                                        jne   .Lx355_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx355_43
                        mov              r9, rax
                                                                                        jmp   .Lx355_42
.Lx355_58:
                        cmp              eax, 72
                                                                                        jne   .Lx355_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_43
                        cmp              rax, r9
                                                                                        je    .Lx355_43
                        mov              r9, rax
                                                                                        jmp   .Lx355_42
.Lx355_43:
                        cmp              r8, r9
                                                                                        je    .Lx355_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx355_44
                        cmp              eax, 104
                                                                                        je    .Lx355_44
                        cmp              eax, 72
                                                                                        jne   .Lx355_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx355_44
                                                                                        jmp   .Lx355_45
.Lx355_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx355_53
                        cmp              eax, 104
                                                                                        je    .Lx355_53
                        cmp              eax, 72
                                                                                        jne   .Lx355_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx355_53
                                                                                        jmp   .Lx355_46
.Lx355_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx355_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx355_53
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
                                                                                        jmp   .Lx355_51
.Lx355_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx355_47
                        cmp              eax, 104
                                                                                        je    .Lx355_47
                        cmp              eax, 72
                                                                                        jne   .Lx355_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx355_47
                                                                                        jmp   .Lx355_48
.Lx355_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx355_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx355_53
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
                                                                                        jmp   .Lx355_51
.Lx355_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx355_49
                        cmp              edx, 80
                                                                                        je    .Lx355_53
                                                                                        jmp   .Lx355_52
.Lx355_49:
                        cmp              edx, 80
                                                                                        je    .Lx355_52
                        cmp              ecx, 5
                                                                                        je    .Lx355_53
                        cmp              edx, 5
                                                                                        je    .Lx355_53
                        cmp              ecx, 3
                                                                                        jne   .Lx355_50
                        cmp              edx, 3
                                                                                        jne   .Lx355_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx355_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx355_51
                                                                                        jmp   .Lx355_52
.Lx355_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx355_53
.Lx355_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx355_54
.Lx355_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx355_54
.Lx355_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx355_54:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n269_var_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n270_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn359:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]                         # fn
                        lea              rsi, [rbp + 1344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n273_lit_string_α
n270_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 4
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n272_call_builtin_prolog_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn362:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]                         # fn
                        lea              rsi, [rbp + 1392]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n273_lit_string_α
n272_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 0
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n274_call_builtin_prolog_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn365:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]                         # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n275_call_builtin_prolog_α
n274_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn367:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n276_var_ref_α
n275_call_builtin_prolog_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n277_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx371_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx371_21
.Lx371_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1264]                    # v
                        mov              rdx, qword ptr [rbp + 1272]                    # v
                        call             rt_arg_stage@PLT
.Lx371_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx371_1
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx371_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx371_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_1:
                        call             rt_faildescr@PLT
.Lx371_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n280_call_builtin_prolog_α
                                                                                        jmp   n278_var_α
n277_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "$disj2/1"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n279_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn375:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]                         # fn
                        lea              rsi, [rbp + 1152]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n277_call_proc_staged_β
n279_call_builtin_prolog_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn377:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn377]                         # fn
                        lea              rsi, [rbp + 1040]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n281_var_ref_α
n280_call_builtin_prolog_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
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
.Lx380_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx380_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_41
                        cmp              esi, 1
                                                                                        jne   .Lx380_55
                        mov              r8, rax
                                                                                        jmp   .Lx380_40
.Lx380_55:
                        cmp              esi, 2
                                                                                        jne   .Lx380_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_41
                        mov              r8, rax
                                                                                        jmp   .Lx380_40
.Lx380_56:
                        cmp              eax, 72
                                                                                        jne   .Lx380_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_41
                        cmp              rax, r8
                                                                                        je    .Lx380_41
                        mov              r8, rax
                                                                                        jmp   .Lx380_40
.Lx380_41:
                        lea              r9, [rbp + 1104]
.Lx380_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx380_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_43
                        cmp              esi, 1
                                                                                        jne   .Lx380_57
                        mov              r9, rax
                                                                                        jmp   .Lx380_42
.Lx380_57:
                        cmp              esi, 2
                                                                                        jne   .Lx380_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_43
                        mov              r9, rax
                                                                                        jmp   .Lx380_42
.Lx380_58:
                        cmp              eax, 72
                                                                                        jne   .Lx380_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_43
                        cmp              rax, r9
                                                                                        je    .Lx380_43
                        mov              r9, rax
                                                                                        jmp   .Lx380_42
.Lx380_43:
                        cmp              r8, r9
                                                                                        je    .Lx380_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_44
                        cmp              eax, 104
                                                                                        je    .Lx380_44
                        cmp              eax, 72
                                                                                        jne   .Lx380_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx380_44
                                                                                        jmp   .Lx380_45
.Lx380_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_53
                        cmp              eax, 104
                                                                                        je    .Lx380_53
                        cmp              eax, 72
                                                                                        jne   .Lx380_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx380_53
                                                                                        jmp   .Lx380_46
.Lx380_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx380_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx380_53
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
                                                                                        jmp   .Lx380_51
.Lx380_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_47
                        cmp              eax, 104
                                                                                        je    .Lx380_47
                        cmp              eax, 72
                                                                                        jne   .Lx380_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx380_47
                                                                                        jmp   .Lx380_48
.Lx380_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx380_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx380_53
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
                                                                                        jmp   .Lx380_51
.Lx380_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx380_49
                        cmp              edx, 80
                                                                                        je    .Lx380_53
                                                                                        jmp   .Lx380_52
.Lx380_49:
                        cmp              edx, 80
                                                                                        je    .Lx380_52
                        cmp              ecx, 5
                                                                                        je    .Lx380_53
                        cmp              edx, 5
                                                                                        je    .Lx380_53
                        cmp              ecx, 3
                                                                                        jne   .Lx380_50
                        cmp              edx, 3
                                                                                        jne   .Lx380_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx380_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx380_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx380_51
                                                                                        jmp   .Lx380_52
.Lx380_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx380_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx380_53
.Lx380_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx380_54
.Lx380_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx380_54
.Lx380_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx380_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n283_var_ref_α
n282_call_builtin_prolog_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 2
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n285_call_builtin_prolog_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn385:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn385]                         # fn
                        lea              rsi, [rbp + 928]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n286_var_ref_α
n285_call_builtin_prolog_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
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
.Lx390_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx390_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_41
                        cmp              esi, 1
                                                                                        jne   .Lx390_55
                        mov              r8, rax
                                                                                        jmp   .Lx390_40
.Lx390_55:
                        cmp              esi, 2
                                                                                        jne   .Lx390_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_41
                        mov              r8, rax
                                                                                        jmp   .Lx390_40
.Lx390_56:
                        cmp              eax, 72
                                                                                        jne   .Lx390_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_41
                        cmp              rax, r8
                                                                                        je    .Lx390_41
                        mov              r8, rax
                                                                                        jmp   .Lx390_40
.Lx390_41:
                        lea              r9, [rbp + 864]
.Lx390_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx390_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_43
                        cmp              esi, 1
                                                                                        jne   .Lx390_57
                        mov              r9, rax
                                                                                        jmp   .Lx390_42
.Lx390_57:
                        cmp              esi, 2
                                                                                        jne   .Lx390_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_43
                        mov              r9, rax
                                                                                        jmp   .Lx390_42
.Lx390_58:
                        cmp              eax, 72
                                                                                        jne   .Lx390_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_43
                        cmp              rax, r9
                                                                                        je    .Lx390_43
                        mov              r9, rax
                                                                                        jmp   .Lx390_42
.Lx390_43:
                        cmp              r8, r9
                                                                                        je    .Lx390_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_44
                        cmp              eax, 104
                                                                                        je    .Lx390_44
                        cmp              eax, 72
                                                                                        jne   .Lx390_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx390_44
                                                                                        jmp   .Lx390_45
.Lx390_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_53
                        cmp              eax, 104
                                                                                        je    .Lx390_53
                        cmp              eax, 72
                                                                                        jne   .Lx390_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx390_53
                                                                                        jmp   .Lx390_46
.Lx390_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx390_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx390_53
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
                                                                                        jmp   .Lx390_51
.Lx390_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_47
                        cmp              eax, 104
                                                                                        je    .Lx390_47
                        cmp              eax, 72
                                                                                        jne   .Lx390_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx390_47
                                                                                        jmp   .Lx390_48
.Lx390_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx390_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx390_53
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
                                                                                        jmp   .Lx390_51
.Lx390_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx390_49
                        cmp              edx, 80
                                                                                        je    .Lx390_53
                                                                                        jmp   .Lx390_52
.Lx390_49:
                        cmp              edx, 80
                                                                                        je    .Lx390_52
                        cmp              ecx, 5
                                                                                        je    .Lx390_53
                        cmp              edx, 5
                                                                                        je    .Lx390_53
                        cmp              ecx, 3
                                                                                        jne   .Lx390_50
                        cmp              edx, 3
                                                                                        jne   .Lx390_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx390_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx390_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx390_51
                                                                                        jmp   .Lx390_52
.Lx390_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx390_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx390_53
.Lx390_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx390_54
.Lx390_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx390_54
.Lx390_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx390_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n291_lit_string_α
                                                                                        jmp   n289_var_α
n288_call_builtin_prolog_β:
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n290_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n290_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn394:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n293_lit_string_α
n290_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 4
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n292_call_builtin_prolog_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn397:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]                         # fn
                        lea              rsi, [rbp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n293_lit_string_α
n292_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 0
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n294_call_builtin_prolog_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn400:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn400]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n295_call_builtin_prolog_α
n294_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn402:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]                         # fn
                        lea              rsi, [rbp + 416]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n296_var_ref_α
n295_call_builtin_prolog_β:
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n297_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx406_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx406_21
.Lx406_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 672]                     # v
                        mov              rdx, qword ptr [rbp + 680]                     # v
                        call             rt_arg_stage@PLT
.Lx406_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx406_1
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4]
                                                                                        jmp   rax
.Lx406_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx406_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx406_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_1:
                        call             rt_faildescr@PLT
.Lx406_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n300_call_builtin_prolog_α
                                                                                        jmp   n298_var_α
n297_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "$disj3/1"
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n299_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
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
                        lea              rdi, [rip + .Lrkfn410]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n297_call_proc_staged_β
n299_call_builtin_prolog_β:
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn412:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n301_var_ref_α
n300_call_builtin_prolog_β:
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n302_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_prolog_α:
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
.Lx415_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              rax, r8
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_41:
                        lea              r9, [rbp + 512]
.Lx415_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx415_44
                        cmp              eax, 72
                                                                                        jne   .Lx415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx415_44
                                                                                        jmp   .Lx415_45
.Lx415_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_53
                        cmp              eax, 104
                                                                                        je    .Lx415_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx415_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx415_49
                        cmp              edx, 80
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_52
.Lx415_49:
                        cmp              edx, 80
                                                                                        je    .Lx415_52
                        cmp              ecx, 5
                                                                                        je    .Lx415_53
                        cmp              edx, 5
                                                                                        je    .Lx415_53
                        cmp              ecx, 3
                                                                                        jne   .Lx415_50
                        cmp              edx, 3
                                                                                        jne   .Lx415_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx415_54
.Lx415_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx415_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n303_var_ref_α
n302_call_builtin_prolog_β:
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n304_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 2
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n305_call_builtin_prolog_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn420:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n306_var_ref_α
n305_call_builtin_prolog_β:
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n308_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn426:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn426]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n309_var_α
n308_call_builtin_prolog_β:
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n310_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn430:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn430]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n313_lit_string_α
n310_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 4
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n312_call_builtin_prolog_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn433:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n313_lit_string_α
n312_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n314_call_builtin_prolog_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn436:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn436]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n317_call_builtin_prolog_α
                                                                                        jmp   n315_move_label_α
n314_call_builtin_prolog_β:
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_move_label_α:
                        lea              rax, [rip + n317_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n316_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n316_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n317_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n316_disjunction_α
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
                        .section         .note.GNU-stack,"",@progbits
